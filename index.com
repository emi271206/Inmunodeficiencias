<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Herramienta Interactiva: Inmunodeficiencias Primarias</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8fafc; /* slate-50 */
        }
        .tab-content {
            display: none;
            animation: fadeIn 0.3s ease-in-out;
        }
        .tab-content.active {
            display: block;
        }
        .tab-btn.active {
            color: #2563eb; /* blue-600 */
            border-bottom-color: #2563eb;
            background-color: #eff6ff; /* blue-50 */
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(5px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body class="text-slate-800 antialiased">

    <!-- Header -->
    <header class="bg-blue-900 text-white shadow-lg">
        <div class="max-w-5xl mx-auto px-6 py-12">
            <h1 class="text-3xl md:text-4xl font-bold mb-4">Inmunodeficiencias Primarias (IDP)</h1>
            <p class="text-blue-100 text-lg md:text-xl max-w-3xl">Una herramienta integral de consulta sobre Errores Innatos de la Inmunidad. Sintetizando recursos globales y nacionales para la práctica clínica, formación médica y apoyo al paciente.</p>
        </div>
    </header>

    <!-- Main Content -->
    <main class="max-w-5xl mx-auto px-4 py-10 space-y-12">

        <!-- Section 1: JMF -->
        <section id="jmf-section" class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-slate-50 px-6 py-5 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-800 flex items-center">
                    <span class="bg-blue-100 text-blue-800 p-2 rounded-lg mr-3 text-sm">1</span>
                    Jeffrey Modell Foundation (JMF)
                </h2>
                <p class="text-slate-500 text-sm mt-1">Organización global para el diagnóstico temprano y curas de IDP.</p>
            </div>
            
            <!-- Tabs Navigation -->
            <div class="flex flex-wrap border-b border-slate-200 px-2" role="tablist">
                <button class="tab-btn active flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'jmf', 'estudiantes')">Para Estudiantes de Medicina</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'jmf', 'medicos')">Para Médicos</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'jmf', 'pacientes')">Para Pacientes</button>
            </div>

            <!-- Tabs Content -->
            <div class="p-6 md:p-8">
                <div id="jmf-estudiantes" class="tab-content active" data-section="jmf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Formación y Diagnóstico Clínico</h3>
                    <p class="mb-4 text-slate-600">Como estudiante de medicina, el reconocimiento temprano es tu mejor herramienta. La JMF enfatiza fuertemente el conocimiento de las pautas iniciales de sospecha.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Las 10 Señales de Alerta Clínica:</strong> Conocer estas señales (como múltiples infecciones de oído, neumonías recurrentes, uso de antibióticos por largo tiempo sin efecto) es fundamental para discernir entre enfermedades pediátricas comunes y una posible IDP.</li>
                        <li><strong>Nociones de Diagnóstico Temprano:</strong> Educar el ojo clínico para evitar retrasos diagnósticos que deriven en daño orgánico permanente en los pacientes.</li>
                    </ul>
                </div>
                <div id="jmf-medicos" class="tab-content" data-section="jmf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Recursos Avanzados y Red Global</h3>
                    <p class="mb-4 text-slate-600">Para el especialista en inmunología y medicina interna, la fundación provee recursos de vanguardia tecnológica e investigativa.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Red Global de Expertos JMCN:</strong> Acceso a la red de Centros Jeffrey Modell para consultas y derivaciones internacionales.</li>
                        <li><strong>Herramienta SPIRIT® Analyzer:</strong> Uso de Inteligencia Artificial para analizar datos clínicos y ayudar en la precisión diagnóstica temprana.</li>
                        <li><strong>Apoyo Investigativo:</strong> Acceso a becas de investigación y programas de secuenciación genética sin costo para confirmación de mutaciones específicas.</li>
                    </ul>
                </div>
                <div id="jmf-pacientes" class="tab-content" data-section="jmf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Apoyo, Eventos y Conexión</h3>
                    <p class="mb-4 text-slate-600">La fundación asegura que ninguna familia enfrente una IDP en solitario, ofreciendo soporte tangible e integrador.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Eventos KIDS DAYS:</strong> Actividades recreativas y de apoyo psicológico diseñadas específicamente para niños con inmunodeficiencias y sus familias.</li>
                        <li><strong>Conexión con Expertos:</strong> Herramientas para localizar a los especialistas más calificados y cercanos al área de residencia del paciente.</li>
                        <li><strong>Becas WIN:</strong> (World Immunodeficiency Network) Apoyo para potenciar el empoderamiento y la educación de las familias afectadas.</li>
                    </ul>
                </div>
            </div>
        </section>


        <!-- Section 2: IDF -->
        <section id="idf-section" class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-slate-50 px-6 py-5 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-800 flex items-center">
                    <span class="bg-blue-100 text-blue-800 p-2 rounded-lg mr-3 text-sm">2</span>
                    Immune Deficiency Foundation (IDF)
                </h2>
                <p class="text-slate-500 text-sm mt-1">Pilar de apoyo, educación e investigación comunitaria.</p>
            </div>
            
            <!-- Tabs Navigation -->
            <div class="flex flex-wrap border-b border-slate-200 px-2" role="tablist">
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors active" onclick="openTab(event, 'idf', 'estudiantes')">Para Estudiantes de Medicina</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'idf', 'medicos')">Para Médicos</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'idf', 'pacientes')">Para Pacientes</button>
            </div>

            <!-- Tabs Content -->
            <div class="p-6 md:p-8">
                <div id="idf-estudiantes" class="tab-content active" data-section="idf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Bases Biológicas y Extensión de las IDP</h3>
                    <p class="mb-4 text-slate-600">Comprender la amplitud de los Errores Innatos de la Inmunidad es vital para el desarrollo académico.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Catálogo Extenso:</strong> Estudio y documentación de más de 550 tipos diferentes de inmunodeficiencias catalogadas hasta la fecha.</li>
                        <li><strong>Bases Genéticas:</strong> Profundización en los mecanismos moleculares y genéticos que provocan la falla en componentes específicos del sistema inmunológico adaptativo o innato.</li>
                    </ul>
                </div>
                <div id="idf-medicos" class="tab-content" data-section="idf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Investigación, EMC y Apoyo Logístico</h3>
                    <p class="mb-4 text-slate-600">Herramientas prácticas para mejorar la gestión clínica diaria de pacientes complejos.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Educación Médica Continua (EMC):</strong> Acceso a recursos actualizados, simposios y literatura para mantener certificaciones y conocimientos al día.</li>
                        <li><strong>Investigación Clínica:</strong> Participación en encuestas nacionales, guías de tratamiento actualizadas y estudios de cohorte.</li>
                        <li><strong>Autorizaciones Médicas:</strong> Soporte documentado y recursos para ayudar a los médicos a justificar y obtener autorizaciones de seguros para terapias costosas como el reemplazo de inmunoglobulinas.</li>
                    </ul>
                </div>
                <div id="idf-pacientes" class="tab-content" data-section="idf">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Calidad de Vida y Comunidad</h3>
                    <p class="mb-4 text-slate-600">El tratamiento va más allá de la clínica; abarca la vida diaria, el trabajo y el bienestar emocional.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Comunidad IDF Friends:</strong> Plataforma para conectar con otros pacientes, romper el aislamiento y compartir experiencias y consejos de afrontamiento.</li>
                        <li><strong>Bienestar Integral:</strong> Guías específicas sobre el manejo de la salud mental, escolaridad y navegación por las pólizas de seguros médicos.</li>
                        <li><strong>Donación de Plasma:</strong> Promoción activa y educación sobre la donación de plasma, un recurso crítico del cual dependen miles de pacientes para sus terapias de anticuerpos.</li>
                    </ul>
                </div>
            </div>
        </section>


        <!-- Section 3: FUMENI -->
        <section id="fumeni-section" class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
            <div class="bg-slate-50 px-6 py-5 border-b border-slate-200">
                <h2 class="text-2xl font-bold text-blue-800 flex items-center">
                    <span class="bg-blue-100 text-blue-800 p-2 rounded-lg mr-3 text-sm">3</span>
                    FUMENI (Fundación Mexicana)
                </h2>
                <p class="text-slate-500 text-sm mt-1">Realidad nacional, activismo y apoyo a pacientes pediátricos en México.</p>
            </div>
            
            <!-- Tabs Navigation -->
            <div class="flex flex-wrap border-b border-slate-200 px-2" role="tablist">
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors active" onclick="openTab(event, 'fumeni', 'estudiantes')">Para Estudiantes de Medicina</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'fumeni', 'medicos')">Para Médicos</button>
                <button class="tab-btn flex-1 py-4 px-4 text-center font-medium text-slate-600 border-b-2 border-transparent hover:text-blue-600 hover:bg-slate-50 transition-colors" onclick="openTab(event, 'fumeni', 'pacientes')">Para Pacientes</button>
            </div>

            <!-- Tabs Content -->
            <div class="p-6 md:p-8">
                <div id="fumeni-estudiantes" class="tab-content active" data-section="fumeni">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Contexto de Salud Pública en México</h3>
                    <p class="mb-4 text-slate-600">Conocer la dimensión médico-social y política de las enfermedades raras en el país.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Políticas Públicas:</strong> Entender el esfuerzo de activismo para integrar las terapias de IDP dentro de los esquemas de salud pública nacional.</li>
                        <li><strong>Gastos Catastróficos:</strong> Concientización sobre el impacto económico en las familias y la importancia de clasificar las IDP como enfermedades que generan gastos catastróficos para asegurar su financiamiento gubernamental.</li>
                    </ul>
                </div>
                <div id="fumeni-medicos" class="tab-content" data-section="fumeni">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Red Nacional y Capacitación</h3>
                    <p class="mb-4 text-slate-600">Herramientas orientadas a la profesionalización del especialista dentro del territorio mexicano.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Portal Médico Especializado:</strong> Acceso a talleres, cursos de actualización y material didáctico adaptado a los retos clínicos de la región.</li>
                        <li><strong>Directorio Nacional:</strong> Integración a la red nacional de inmunólogos mexicanos para facilitar la derivación y el tratamiento interdisciplinario de los pacientes.</li>
                    </ul>
                </div>
                <div id="fumeni-pacientes" class="tab-content" data-section="fumeni">
                    <h3 class="text-xl font-semibold text-slate-800 mb-4">Esperanza, Testimonios y Apoyo Familiar</h3>
                    <p class="mb-4 text-slate-600">Un espacio seguro y educacional para los padres y los pequeños pacientes.</p>
                    <ul class="list-disc pl-6 space-y-2 text-slate-700">
                        <li><strong>Portal de Familias:</strong> Recursos amigables, explicaciones sencillas sobre diagnósticos y herramientas para el cuidado diario.</li>
                        <li><strong>Testimonios de Éxito:</strong> Historias reales que brindan esperanza, como el caso de éxito del trasplante de médula ósea de Maty, demostrando que la cura es posible.</li>
                        <li><strong>Apoyo Pediátrico:</strong> Acompañamiento psicológico y material didáctico para explicar a los niños su condición de una forma empática y no atemorizante.</li>
                    </ul>
                </div>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="bg-slate-900 text-slate-400 py-8 text-center">
        <div class="max-w-5xl mx-auto px-4 text-sm">
            <p>Herramienta educativa y de consulta desarrollada para síntesis de información de Inmunodeficiencias Primarias.</p>
            <p class="mt-2">Fuentes: Jeffrey Modell Foundation (info4pi.org) | Immune Deficiency Foundation (primaryimmune.org) | FUMENI (fumeni.org.mx)</p>
        </div>
    </footer>

    <!-- JavaScript for Tabs -->
    <script>
        function openTab(evt, sectionCode, tabName) {
            // Find the parent section by ID
            const section = document.getElementById(sectionCode + '-section');
            
            // Hide all tab contents inside this specific section
            const tabContents = section.querySelectorAll('.tab-content');
            tabContents.forEach(content => {
                content.classList.remove('active');
            });

            // Remove 'active' class from all buttons inside this specific section
            const tabButtons = section.querySelectorAll('.tab-btn');
            tabButtons.forEach(btn => {
                btn.classList.remove('active');
            });

            // Show the current tab, and add an "active" class to the button that opened the tab
            const targetTab = document.getElementById(sectionCode + '-' + tabName);
            targetTab.classList.add('active');
            evt.currentTarget.classList.add('active');
        }
    </script>
</body>
</html>
