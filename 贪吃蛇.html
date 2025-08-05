<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>现代贪吃蛇游戏</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- 配置Tailwind自定义颜色和字体 -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#10B981', // 绿色作为主色调，代表游戏活力
                        secondary: '#1E40AF', // 深蓝色作为辅助色
                        accent: '#F59E0B', // 橙色作为强调色，用于食物
                        dark: '#1F2937', // 深色背景
                        light: '#F9FAFB', // 浅色文本
                    },
                    fontFamily: {
                        game: ['"Press Start 2P"', 'cursive', 'system-ui'],
                        sans: ['Inter', 'sans-serif'],
                    },
                }
            }
        }
    </script>
    
    <!-- 自定义工具类 -->
    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
            .snake-gradient {
                background: linear-gradient(135deg, #10B981 0%, #059669 100%);
            }
            .food-pulse {
                animation: pulse 1.5s infinite;
            }
            .game-shadow {
                box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.2), 0 8px 10px -6px rgba(0, 0, 0, 0.1);
            }
            .control-btn {
                @apply bg-primary hover:bg-primary/90 text-white rounded-lg p-4 transition-all duration-200 transform hover:scale-105 active:scale-95 focus:outline-none focus:ring-2 focus:ring-primary/50;
            }
        }
        
        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
                opacity: 1;
            }
            50% {
                transform: scale(1.1);
                opacity: 0.8;
            }
        }
        
        @keyframes slideIn {
            from {
                transform: translateY(-20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
        
        .animate-slide-in {
            animation: slideIn 0.5s ease-out forwards;
        }
    </style>
    
    <!-- 导入游戏风格字体 -->
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body class="bg-gradient-to-br from-dark to-gray-800 min-h-screen text-light flex flex-col items-center justify-center p-4 font-sans">
    <!-- 游戏容器 -->
    <div class="max-w-4xl w-full mx-auto flex flex-col md:flex-row gap-6 items-center md:items-start justify-center">
        
        <!-- 游戏信息面板 -->
        <div class="w-full md:w-64 bg-gray-800/50 backdrop-blur-sm rounded-xl p-5 game-shadow animate-slide-in" style="animation-delay: 0.1s">
            <h1 class="text-[clamp(1.5rem,3vw,2rem)] font-game text-primary text-center mb-6 tracking-tight">贪吃蛇</h1>
            
            <div class="space-y-4 mb-6">
                <div class="bg-gray-700/50 rounded-lg p-3">
                    <p class="text-gray-300 text-sm mb-1">当前得分</p>
                    <p id="score" class="text-2xl font-bold text-primary">0</p>
                </div>
                
                <div class="bg-gray-700/50 rounded-lg p-3">
                    <p class="text-gray-300 text-sm mb-1">最高分</p>
                    <p id="highScore" class="text-2xl font-bold text-secondary">0</p>
                </div>
            </div>
            
            <div class="flex flex-col gap-3 mb-6">
                <button id="startBtn" class="control-btn flex items-center justify-center gap-2">
                    <i class="fa fa-play"></i>
                    <span>开始</span>
                </button>
                <button id="pauseBtn" class="control-btn bg-secondary flex items-center justify-center gap-2" disabled>
                    <i class="fa fa-pause"></i>
                    <span>暂停</span>
                </button>
                <button id="restartBtn" class="control-btn bg-red-500 flex items-center justify-center gap-2" disabled>
                    <i class="fa fa-refresh"></i>
                    <span>重启</span>
                </button>
            </div>
            
            <div class="bg-gray-700/30 rounded-lg p-4">
                <h3 class="text-primary font-semibold mb-2 text-center">操作说明</h3>
                <ul class="text-gray-300 text-sm space-y-2">
                    <li class="flex items-center gap-2">
                        <i class="fa fa-arrow-up text-gray-400"></i>
                        <span>上方向键 - 向上移动</span>
                    </li>
                    <li class="flex items-center gap-2">
                        <i class="fa fa-arrow-down text-gray-400"></i>
                        <span>下方向键 - 向下移动</span>
                    </li>
                    <li class="flex items-center gap-2">
                        <i class="fa fa-arrow-left text-gray-400"></i>
                        <span>左方向键 - 向左移动</span>
                    </li>
                    <li class="flex items-center gap-2">
                        <i class="fa fa-arrow-right text-gray-400"></i>
                        <span>右方向键 - 向右移动</span>
                    </li>
                    <li class="flex items-center gap-2">
                        <i class="fa fa-space-shuttle text-gray-400"></i>
                        <span>空格 - 暂停/继续</span>
                    </li>
                </ul>
            </div>
        </div>
        
        <!-- 游戏主区域 -->
        <div class="relative w-full max-w-md aspect-square animate-slide-in" style="animation-delay: 0.3s">
            <!-- 游戏画布 -->
            <canvas id="gameCanvas" class="w-full h-full bg-gray-900 rounded-xl game-shadow"></canvas>
            
            <!-- 开始游戏提示覆盖层 -->
            <div id="startScreen" class="absolute inset-0 bg-dark/80 backdrop-blur-sm rounded-xl flex flex-col items-center justify-center gap-6 z-10">
                <h2 class="text-[clamp(1.2rem,5vw,2rem)] font-game text-primary text-center">贪吃蛇游戏</h2>
                <p class="text-gray-300 text-center max-w-xs px-4">控制蛇吃到食物，让它变得更长，但不要撞到墙壁或自己的身体！</p>
                <button id="startScreenBtn" class="control-btn px-6 py-3 text-lg">
                    <i class="fa fa-gamepad mr-2"></i>开始游戏
                </button>
            </div>
            
            <!-- 游戏结束覆盖层 -->
            <div id="gameOverScreen" class="absolute inset-0 bg-dark/80 backdrop-blur-sm rounded-xl flex flex-col items-center justify-center gap-4 z-10 hidden">
                <h2 class="text-[clamp(1.2rem,5vw,1.8rem)] font-game text-red-500 text-center">游戏结束</h2>
                <p class="text-gray-300 text-xl">最终得分: <span id="finalScore" class="text-primary font-bold">0</span></p>
                <button id="playAgainBtn" class="control-btn mt-4">
                    <i class="fa fa-refresh mr-2"></i>再来一局
                </button>
            </div>
            
            <!-- 暂停覆盖层 -->
            <div id="pauseScreen" class="absolute inset-0 bg-dark/70 backdrop-blur-sm rounded-xl flex flex-col items-center justify-center gap-4 z-10 hidden">
                <h2 class="text-[clamp(1.2rem,5vw,1.8rem)] font-game text-secondary text-center">游戏暂停</h2>
                <button id="resumeBtn" class="control-btn">
                    <i class="fa fa-play mr-2"></i>继续游戏
                </button>
            </div>
        </div>
    </div>
    
    <!-- 页脚 -->
    <footer class="mt-8 text-gray-400 text-sm">
        <p>© 2023 贪吃蛇游戏 | 使用 HTML, CSS 和 JavaScript 构建</p>
    </footer>

    <script>
        // 游戏常量和变量
        const canvas = document.getElementById('gameCanvas');
        const ctx = canvas.getContext('2d');
        
        // 设置画布尺寸，确保是正方形
        function resizeCanvas() {
            const container = canvas.parentElement;
            const size = container.clientWidth;
            canvas.width = size;
            canvas.height = size;
            // 如果游戏已经初始化，重新绘制
            if (gameState.initialized) {
                draw();
            }
        }
        
        // 监听窗口大小变化，调整画布尺寸
        window.addEventListener('resize', resizeCanvas);
        // 初始调整画布尺寸
        resizeCanvas();
        
        // 游戏状态
        const gameState = {
            snake: [],
            food: {},
            direction: '',
            nextDirection: '',
            score: 0,
            highScore: localStorage.getItem('snakeHighScore') || 0,
            gameSpeed: 150, // 毫秒
            gameLoop: null,
            isRunning: false,
            isPaused: false,
            initialized: false,
            gridSize: 20, // 网格数量
        };
        
        // DOM 元素
        const scoreElement = document.getElementById('score');
        const highScoreElement = document.getElementById('highScore');
        const startBtn = document.getElementById('startBtn');
        const pauseBtn = document.getElementById('pauseBtn');
        const restartBtn = document.getElementById('restartBtn');
        const startScreen = document.getElementById('startScreen');
        const startScreenBtn = document.getElementById('startScreenBtn');
        const gameOverScreen = document.getElementById('gameOverScreen');
        const finalScoreElement = document.getElementById('finalScore');
        const playAgainBtn = document.getElementById('playAgainBtn');
        const pauseScreen = document.getElementById('pauseScreen');
        const resumeBtn = document.getElementById('resumeBtn');
        
        // 更新高分显示
        highScoreElement.textContent = gameState.highScore;
        
        // 初始化游戏
        function initGame() {
            // 初始化蛇的位置（屏幕中心）
            const center = Math.floor(gameState.gridSize / 2);
            gameState.snake = [
                { x: center, y: center },
                { x: center - 1, y: center },
                { x: center - 2, y: center }
            ];
            
            // 设置初始方向
            gameState.direction = 'right';
            gameState.nextDirection = 'right';
            
            // 生成食物
            generateFood();
            
            // 重置分数
            gameState.score = 0;
            scoreElement.textContent = '0';
            
            // 更新游戏状态
            gameState.initialized = true;
            gameState.isPaused = false;
            
            // 隐藏所有屏幕
            startScreen.classList.add('hidden');
            gameOverScreen.classList.add('hidden');
            pauseScreen.classList.add('hidden');
            
            // 绘制初始状态
            draw();
        }
        
        // 生成食物位置
        function generateFood() {
            // 随机生成食物位置
            let newFood;
            do {
                newFood = {
                    x: Math.floor(Math.random() * gameState.gridSize),
                    y: Math.floor(Math.random() * gameState.gridSize)
                };
            } while (
                // 确保食物不会出现在蛇身上
                gameState.snake.some(segment => segment.x === newFood.x && segment.y === newFood.y)
            );
            
            gameState.food = newFood;
        }
        
        // 绘制游戏
        function draw() {
            // 清除画布
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            
            // 计算每个格子的大小
            const cellSize = canvas.width / gameState.gridSize;
            
            // 绘制蛇
            gameState.snake.forEach((segment, index) => {
                // 蛇头使用不同的样式
                if (index === 0) {
                    // 蛇头渐变
                    const headGradient = ctx.createLinearGradient(
                        segment.x * cellSize, 
                        segment.y * cellSize, 
                        (segment.x + 1) * cellSize, 
                        (segment.y + 1) * cellSize
                    );
                    headGradient.addColorStop(0, '#34D399');
                    headGradient.addColorStop(1, '#10B981');
                    
                    ctx.fillStyle = headGradient;
                    ctx.shadowColor = 'rgba(16, 185, 129, 0.5)';
                    ctx.shadowBlur = 10;
                } else {
                    // 蛇身使用主色调，透明度逐渐降低
                    const opacity = 1 - (index / gameState.snake.length) * 0.5;
                    ctx.fillStyle = `rgba(16, 185, 129, ${opacity})`;
                    ctx.shadowBlur = 0;
                }
                
                // 绘制圆角矩形作为蛇的身体部分
                const radius = cellSize * 0.2;
                const x = segment.x * cellSize;
                const y = segment.y * cellSize;
                const width = cellSize;
                const height = cellSize;
                
                ctx.beginPath();
                ctx.moveTo(x + radius, y);
                ctx.arcTo(x + width, y, x + width, y + height, radius);
                ctx.arcTo(x + width, y + height, x, y + height, radius);
                ctx.arcTo(x, y + height, x, y, radius);
                ctx.arcTo(x, y, x + width, y, radius);
                ctx.closePath();
                ctx.fill();
            });
            
            // 重置阴影
            ctx.shadowBlur = 0;
            
            // 绘制食物（带脉冲动画）
            const foodSize = cellSize * 0.8;
            const foodX = gameState.food.x * cellSize + (cellSize - foodSize) / 2;
            const foodY = gameState.food.y * cellSize + (cellSize - foodSize) / 2;
            
            // 食物渐变
            const foodGradient = ctx.createRadialGradient(
                foodX + foodSize/2, 
                foodY + foodSize/2, 
                0,
                foodX + foodSize/2, 
                foodY + foodSize/2, 
                foodSize/2
            );
            foodGradient.addColorStop(0, '#FBBF24');
            foodGradient.addColorStop(1, '#F59E0B');
            
            ctx.fillStyle = foodGradient;
            ctx.beginPath();
            ctx.arc(
                foodX + foodSize/2, 
                foodY + foodSize/2, 
                foodSize/2, 
                0, 
                Math.PI * 2
            );
            ctx.fill();
            
            // 如果游戏暂停，绘制半透明遮罩
            if (gameState.isPaused) {
                ctx.fillStyle = 'rgba(0, 0, 0, 0.3)';
                ctx.fillRect(0, 0, canvas.width, canvas.height);
            }
        }
        
        // 更新游戏状态
        function update() {
            // 更新方向
            gameState.direction = gameState.nextDirection;
            
            // 获取蛇头
            const head = { ...gameState.snake[0] };
            
            // 根据方向移动蛇头
            switch (gameState.direction) {
                case 'up':
                    head.y--;
                    break;
                case 'down':
                    head.y++;
                    break;
                case 'left':
                    head.x--;
                    break;
                case 'right':
                    head.x++;
                    break;
            }
            
            // 检查碰撞（墙壁）
            if (
                head.x < 0 || 
                head.x >= gameState.gridSize || 
                head.y < 0 || 
                head.y >= gameState.gridSize
            ) {
                gameOver();
                return;
            }
            
            // 检查碰撞（自身）
            if (gameState.snake.some(segment => segment.x === head.x && segment.y === head.y)) {
                gameOver();
                return;
            }
            
            // 将新头部添加到蛇
            gameState.snake.unshift(head);
            
            // 检查是否吃到食物
            if (head.x === gameState.food.x && head.y === gameState.food.y) {
                // 增加分数
                gameState.score += 10;
                scoreElement.textContent = gameState.score;
                
                // 生成新食物
                generateFood();
                
                // 随着分数增加提高游戏速度
                if (gameState.score % 50 === 0 && gameState.gameSpeed > 60) {
                    gameState.gameSpeed -= 5;
                    // 重新启动游戏循环以应用新速度
                    clearInterval(gameState.gameLoop);
                    gameState.gameLoop = setInterval(gameLoop, gameState.gameSpeed);
                }
            } else {
                // 如果没吃到食物，移除尾部
                gameState.snake.pop();
            }
            
            // 绘制更新后的游戏状态
            draw();
        }
        
        // 游戏主循环
        function gameLoop() {
            update();
        }
        
        // 开始游戏
        function startGame() {
            if (!gameState.initialized) {
                initGame();
            }
            
            if (gameState.isPaused) {
                gameState.isPaused = false;
                pauseScreen.classList.add('hidden');
            }
            
            if (!gameState.isRunning) {
                gameState.isRunning = true;
                gameState.gameLoop = setInterval(gameLoop, gameState.gameSpeed);
                
                // 更新按钮状态
                startBtn.disabled = true;
                pauseBtn.disabled = false;
                restartBtn.disabled = false;
            }
        }
        
        // 暂停游戏
        function pauseGame() {
            if (gameState.isRunning && !gameState.isPaused) {
                gameState.isPaused = true;
                clearInterval(gameState.gameLoop);
                pauseScreen.classList.remove('hidden');
                pauseBtn.disabled = true;
            }
        }
        
        // 继续游戏
        function resumeGame() {
            if (gameState.isRunning && gameState.isPaused) {
                gameState.isPaused = false;
                gameState.gameLoop = setInterval(gameLoop, gameState.gameSpeed);
                pauseScreen.classList.add('hidden');
                pauseBtn.disabled = false;
            }
        }
        
        // 重新开始游戏
        function restartGame() {
            // 清除当前游戏循环
            clearInterval(gameState.gameLoop);
            
            // 初始化新游戏
            initGame();
            
            // 开始新游戏
            gameState.isRunning = true;
            gameState.gameLoop = setInterval(gameLoop, gameState.gameSpeed);
            
            // 更新按钮状态
            startBtn.disabled = true;
            pauseBtn.disabled = false;
            restartBtn.disabled = false;
        }
        
        // 游戏结束
        function gameOver() {
            // 停止游戏循环
            clearInterval(gameState.gameLoop);
            gameState.isRunning = false;
            
            // 检查是否为新高分
            if (gameState.score > gameState.highScore) {
                gameState.highScore = gameState.score;
                highScoreElement.textContent = gameState.highScore;
                localStorage.setItem('snakeHighScore', gameState.highScore);
            }
            
            // 显示游戏结束屏幕
            finalScoreElement.textContent = gameState.score;
            gameOverScreen.classList.remove('hidden');
            
            // 更新按钮状态
            startBtn.disabled = false;
            pauseBtn.disabled = true;
            restartBtn.disabled = false;
        }
        
        // 处理键盘输入
        function handleKeyPress(e) {
            const key = e.key;
            
            // 方向控制 - 防止180度转向
            if (key === 'ArrowUp' && gameState.direction !== 'down') {
                gameState.nextDirection = 'up';
            } else if (key === 'ArrowDown' && gameState.direction !== 'up') {
                gameState.nextDirection = 'down';
            } else if (key === 'ArrowLeft' && gameState.direction !== 'right') {
                gameState.nextDirection = 'left';
            } else if (key === 'ArrowRight' && gameState.direction !== 'left') {
                gameState.nextDirection = 'right';
            } 
            // 空格控制暂停/继续
            else if (key === ' ') {
                e.preventDefault(); // 防止页面滚动
                if (gameState.isRunning) {
                    if (gameState.isPaused) {
                        resumeGame();
                    } else {
                        pauseGame();
                    }
                } else if (gameState.initialized) {
                    startGame();
                }
            }
        }
        
        // 触摸控制 - 检测滑动方向
        let touchStartX = 0;
        let touchStartY = 0;
        
        function handleTouchStart(e) {
            touchStartX = e.touches[0].clientX;
            touchStartY = e.touches[0].clientY;
        }
        
        function handleTouchEnd(e) {
            if (!touchStartX || !touchStartY) {
                return;
            }
            
            const touchEndX = e.changedTouches[0].clientX;
            const touchEndY = e.changedTouches[0].clientY;
            
            const diffX = touchEndX - touchStartX;
            const diffY = touchEndY - touchStartY;
            
            // 确定滑动方向（水平或垂直）
            if (Math.abs(diffX) > Math.abs(diffY)) {
                // 水平滑动
                if (diffX > 0 && gameState.direction !== 'left') {
                    gameState.nextDirection = 'right';
                } else if (diffX < 0 && gameState.direction !== 'right') {
                    gameState.nextDirection = 'left';
                }
            } else {
                // 垂直滑动
                if (diffY > 0 && gameState.direction !== 'up') {
                    gameState.nextDirection = 'down';
                } else if (diffY < 0 && gameState.direction !== 'down') {
                    gameState.nextDirection = 'up';
                }
            }
            
            // 重置触摸起点
            touchStartX = 0;
            touchStartY = 0;
        }
        
        // 事件监听器
        document.addEventListener('keydown', handleKeyPress);
        canvas.addEventListener('touchstart', handleTouchStart, false);
        canvas.addEventListener('touchend', handleTouchEnd, false);
        
        // 按钮事件
        startBtn.addEventListener('click', startGame);
        pauseBtn.addEventListener('click', pauseGame);
        restartBtn.addEventListener('click', restartGame);
        startScreenBtn.addEventListener('click', startGame);
        playAgainBtn.addEventListener('click', restartGame);
        resumeBtn.addEventListener('click', resumeGame);
        
        // 初始绘制开始屏幕
        draw();
    </script>
</body>
</html>
