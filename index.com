<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inmunodeficiencias Primarias</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function showTab(orgId, tabId) {
            // Ocultar todos los contenidos de la sección actual
            const tabs = document.querySelectorAll(`#${orgId} .tab-content`);
            tabs.forEach(tab => tab.classList.add('hidden'));

            // Restablecer estilos de todos los botones en la sección actual
            const buttons = document.querySelectorAll(`#${orgId} .tab-btn`);
            buttons.forEach(btn => {
                btn.classList.remove('bg-blue-600', 'text-white');
                btn.classList.add('bg-gray-200', 'text-gray-800');
            });

            // Mostrar el contenido seleccionado y cambiar el color del botón
            document.getElementById(`${orgId}-${tabId}`).classList.remove('hidden');
            const activeBtn = document.getElementById(`btn-${orgId}-${tabId}`);
            activeBtn.classList.remove('bg-gray-200', 'text-gray-800');
            activeBtn.classList.add('bg-blue-600', 'text-white');
        }
    </script>
</head>
<body class="bg-slate-50 font-sans leading-relaxed text-slate-800">

    <header class="bg-blue-800 text-white py-8 shadow-md">
        <div class="container mx-auto px-6 max-w-5xl">
            <h1 class="text-3xl font-bold mb-2">Herramienta Interactiva: Inmunodeficiencias Primarias (IDP)</h1>
            <p class="text-blue-100">Información consolidada para Estudiantes, Médicos y Pacientes basada en fuentes oficiales.</p>
        </div>
    </header>

    <main class="container mx-auto px-6 max-w-5xl py-8 space-y-12">

        <!-- SECCIÓN 1: JMF -->
        <section id="jmf" class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-blue-50 p-6 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-900">Jeffrey Modell Foundation (info4pi.org)</h2>
                <p class="text-slate-600 mt-1">Enfoque global en diagnóstico temprano, 10 señales de alerta y curas para IDP.</p>
            </div>
            
            <div class="p-6">
                <div class="flex flex-wrap gap-2 mb-6">
                    <button id="btn-jmf-estudiantes" onclick="showTab('jmf', 'estudiantes')" class="tab-btn bg-blue-600 text-white px-4 py-2 rounded font-medium transition-colors">Estudiantes de Medicina</button>
                    <button id="btn-jmf-medicos" onclick="showTab('jmf', 'medicos')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Médicos</button>
                    <button id="btn-jmf-pacientes" onclick="showTab('jmf', 'pacientes')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Pacientes</button>
                </div>

                <div id="jmf-estudiantes" class="tab-content">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Conceptos Clave para Estudiantes</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Detección Clínica:</strong> Familiarización con las "10 Señales de Alerta" (10 Warning Signs), herramienta estándar para sospechar de una IDP en pediatría.</li>
                        <li><strong>Prevención:</strong> Entender que la morbilidad por infecciones recurrentes disminuye drásticamente con un diagnóstico temprano.</li>
                        <li><strong>Tamizaje Neonatal:</strong> Conocimiento de la importancia del tamizaje (SCID) a nivel global impulsado por la fundación.</li>
                    </ul>
                </div>

                <div id="jmf-medicos" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Recursos Clínicos y de Investigación</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Medical Academy:</strong> Acceso a programas de secuenciación genética sin costo para diagnósticos de precisión.</li>
                        <li><strong>SPIRIT® Analyzer:</strong> Herramienta de software con Inteligencia Artificial diseñada para optimizar el cribado clínico de pacientes.</li>
                        <li><strong>Financiamiento:</strong> Oportunidades de becas de investigación y apoyo para asistir a conferencias a través de los Jeffrey Modell Centers Network.</li>
                    </ul>
                </div>

                <div id="jmf-pacientes" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Apoyo y Orientación</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Information Booth:</strong> Directorio global para conectar con inmunólogos expertos cercanos a tu ubicación.</li>
                        <li><strong>Educación Continua:</strong> Materiales didácticos y toolkits regionales para entender qué significa vivir con IDP.</li>
                        <li><strong>Village Park:</strong> Eventos como la "Semana Mundial de las IDP" y programas de apoyo (WIN grant, KIDS DAYS) para integrar a la comunidad.</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- SECCIÓN 2: IDF -->
        <section id="idf" class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-blue-50 p-6 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-900">Immune Deficiency Foundation (primaryimmune.org)</h2>
                <p class="text-slate-600 mt-1">Apoyo integral, educación clínica y manejo de la calidad de vida en Inmunodeficiencias.</p>
            </div>
            
            <div class="p-6">
                <div class="flex flex-wrap gap-2 mb-6">
                    <button id="btn-idf-estudiantes" onclick="showTab('idf', 'estudiantes')" class="tab-btn bg-blue-600 text-white px-4 py-2 rounded font-medium transition-colors">Estudiantes de Medicina</button>
                    <button id="btn-idf-medicos" onclick="showTab('idf', 'medicos')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Médicos</button>
                    <button id="btn-idf-pacientes" onclick="showTab('idf', 'pacientes')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Pacientes</button>
                </div>

                <div id="idf-estudiantes" class="tab-content">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Fisiopatología y Clasificación</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Errores Innatos de la Inmunidad:</strong> Estudio de las más de 550 variaciones genéticas que causan fallos en el sistema inmune.</li>
                        <li><strong>Bases Terapéuticas:</strong> Comprensión de los pilares de tratamiento: antimicrobianos profilácticos, terapia de reemplazo de inmunoglobulinas, trasplante de células madre y terapia génica.</li>
                    </ul>
                </div>

                <div id="idf-medicos" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Manejo y Ensayos Clínicos</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Educación y Autorizaciones:</strong> Guías actualizadas para el manejo clínico, obtención de autorizaciones previas de seguros y diagnóstico diferencial.</li>
                        <li><strong>Investigación (Research Grant Program):</strong> Información sobre ensayos clínicos vigentes y financiamiento para investigaciones especializadas.</li>
                    </ul>
                </div>

                <div id="idf-pacientes" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Calidad de Vida y Acompañamiento</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Vida Diaria con IDP:</strong> Estrategias para manejar los síntomas secundarios invisibles (como fatiga extrema o dolores articulares) e impacto en la salud mental.</li>
                        <li><strong>Navegación del Sistema:</strong> Asesoría para manejar seguros médicos, trabajar de manera segura, viajes y planificación de embarazo.</li>
                        <li><strong>Activismo:</strong> Posibilidad de conectar con comunidades de apoyo (IDF Friends) y fomentar la donación de plasma para tratamientos de inmunoglobulina.</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- SECCIÓN 3: FUMENI -->
        <section id="fumeni" class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-blue-50 p-6 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-900">FUMENI (fumeni.org.mx)</h2>
                <p class="text-slate-600 mt-1">Fundación Mexicana orientada al marco legal nacional, atención pediátrica y accesibilidad al tratamiento.</p>
            </div>
            
            <div class="p-6">
                <div class="flex flex-wrap gap-2 mb-6">
                    <button id="btn-fumeni-estudiantes" onclick="showTab('fumeni', 'estudiantes')" class="tab-btn bg-blue-600 text-white px-4 py-2 rounded font-medium transition-colors">Estudiantes de Medicina</button>
                    <button id="btn-fumeni-medicos" onclick="showTab('fumeni', 'medicos')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Médicos</button>
                    <button id="btn-fumeni-pacientes" onclick="showTab('fumeni', 'pacientes')" class="tab-btn bg-gray-200 text-gray-800 px-4 py-2 rounded font-medium transition-colors">Pacientes</button>
                </div>

                <div id="fumeni-estudiantes" class="tab-content">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Contexto Epidemiológico e Institucional</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Políticas Públicas de Salud:</strong> Análisis del activismo que busca catalogar a las IDP como "Enfermedades que ocasionan Gastos Catastróficos" dentro del sector salud mexicano.</li>
                        <li><strong>Abordaje Pediátrico:</strong> Énfasis en los signos de alarma aplicados a la población infantil en México para agilizar la derivación temprana.</li>
                    </ul>
                </div>

                <div id="fumeni-medicos" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Redes y Formación Continua</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Portal Médico:</strong> Repositorio de cursos, talleres y algoritmos de abordaje clínico específicos avalados por FUMENI.</li>
                        <li><strong>Directorio Nacional:</strong> Integración a la red nacional de inmunólogos para facilitar la referencia de pacientes pediátricos y adultos.</li>
                    </ul>
                </div>

                <div id="fumeni-pacientes" class="tab-content hidden">
                    <h3 class="text-xl font-semibold mb-3 text-slate-800">Apoyo a Familias en México</h3>
                    <ul class="list-disc pl-5 space-y-2 text-slate-700">
                        <li><strong>Portal Familias:</strong> Casos de éxito (como la historia del trasplante de médula ósea de Maty), recursos para papás y mamás, y material para empoderar a los niños ("Superheroínas y Superhéroes").</li>
                        <li><strong>Localizador Especializado:</strong> Herramientas para encontrar inmunólogos pediátricos y expertos dentro del territorio nacional.</li>
                        <li><strong>Donativos y Redes:</strong> Plataforma para hacer aportaciones ("Defensas para la Vida") y acceder a foros sobre el derecho a la salud en México.</li>
                    </ul>
                </div>
            </div>
        </section>

    </main>

</body>
</html>
