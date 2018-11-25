From: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH 02/13] ARM: multi_v7_defconfig: Add missing systemd options
Date: Sun, 25 Nov 2018 19:18:56 -0200
Message-ID: <20181125211907.9895-2-otavio@ossystems.com.br>
References: <20181125211907.9895-1-otavio@ossystems.com.br>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181125211907.9895-1-otavio@ossystems.com.br>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Fabio Berton <fabio.berton@ossystems.com.br>, Otavio Salvador <otavio@ossystems.com.br>, =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>, Arnd Bergmann <arnd@arndb.de>, Eric Anholt <eric@anholt.net>, Alexandre Torgue <alexandre.torgue@st.com>, Stefan Wahren <stefan.wahren@i2se.com>, Stefan Agner <stefan@agner.ch>, Tony Lindgren <tony@atomide.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Olof Johansson <olof@lixom.net>, Russell King <linux@armlinux.org.uk>, Simon Horman <horms+renesas@verge.net.au>
List-Id: linux-rockchip.vger.kernel.org

From: Fabio Berton <fabio.berton@ossystems.com.br>

Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---

 arch/arm/configs/multi_v7_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index a8ec309d182a..34c8a745d951 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -2,7 +2,12 @@ CONFIG_SYSVIPC=y
 CONFIG_NO_HZ=y
 CONFIG_HIGH_RES_TIMERS=y
 CONFIG_CGROUPS=y
+CONFIG_CGROUP_BPF=y
+CONFIG_NAMESPACES=y
+CONFIG_USER_NS=y
+CONFIG_CHECKPOINT_RESTORE=y
 CONFIG_BLK_DEV_INITRD=y
+CONFIG_BPF_SYSCALL=y
 CONFIG_EMBEDDED=y
 CONFIG_PERF_EVENTS=y
 CONFIG_MODULES=y
-- 
2.19.1
