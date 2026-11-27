Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79882606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 12:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pC5zt7nI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=lq5aLGsT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=uhteqOovV7knN3dnrhq9IP0a8VZBXOE8EwaM7EvkejU=; b=pC5zt7nIlocSMzIr7OH3zfW+z5
	8GDWEW1/p2OBBCn6SnZRKndnqmF3RqHJjfcXs2fP+XNNIvpk5GP/+L61atKew7dQ3eLwhDD883fpL
	JFmSoZ3IzpfjF42BZ/KyT4I6TbjYGTn3AV6574bG2Haq6bi8X93hPKv2t0Pxwjk7crwPLP3ciQWk0
	aLDXz2gGZunUFLVqsVtDiId+x0uM/xggnB6U3d2mUeyGObIG8zQYQtmPHnRonSKBhL/OO5QhG9Fz1
	87z9WLNMDHi1M/UDfvK6rmsCLSM4rCs44KmDmkiN0KQJ/QKaBBAdV1e7DllWLhA464eWyD0Fj40XS
	/PClAzyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv30-0000000G7uF-0Uzy;
	Fri, 27 Nov 2026 12:27:26 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv2x-0000000G7sV-1ADH
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 12:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795782441;
	bh=e06JdsJ6NaTyRmO5sHK4ldp+a7pHU6htpMkP4M/mCXo=;
	h=From:Date:Subject:To:Cc:From;
	b=lq5aLGsTQ9B0nmXLKoiogYgQhBej7Iwbfu3ckr4wVR6daRYzWfIv0n5LjdbJMVkbP
	 tHx0eJ5eT80EdKl8lW8EbQ1A/Gz8S6yfhwMtfeKjQG7FnpfIYaLJMETNj717NQQ5vD
	 o8S4YMy/uFUoqN0ubqKcTY7mE0KFWKZluxDgMp/Xov5ZoZl3J2iGe0FLEE6hRWnIJp
	 tD8ja7yHWGohbB+AQiPaGCYlZp4JU5+k2sf75qGCyn5zSxR8u1yvNzNeO6RdHhJ5Fz
	 jAFZmDO+eRNnTo4ck/Z4eYDcFZL+s52zj7B43/HgbkIqSA0MSFCixsXAhjcpHs3dJp
	 wClDZQJvlO1tQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 160B717E014A;
	Fri, 27 Nov 2026 13:27:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D1B4D48002C; Fri, 27 Nov 2026 13:27:20 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 27 Nov 2026 13:26:06 +0100
Subject: [PATCH] regmap: Support mutex-locked maps during atomic shutdown
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-regmap-atomic-shutdown-v1-1-1a0122144df6@collabora.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQ6CMAyA4VchPduELhHQVzEeyqhQEzayDjUhv
 DtTj9/h/zcwSSoG12qDJC81jaGAThX4icMoqEMxuNo1RK7FJOPMC3KOs3q0ac1DfAfs+czkL11
 HdQslXpI89PMb3+5/29o/xefvDfb9AJFt99Z6AAAA
X-Change-ID: 20261127-regmap-atomic-shutdown-ba5a1c988107
To: Mark Brown <broonie@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, 
 Johan Hovold <johan@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 driver-core@lists.linux.dev, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2427;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=e06JdsJ6NaTyRmO5sHK4ldp+a7pHU6htpMkP4M/mCXo=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGsJdyRuZGW3wWp/GUW15z14qpHcM25iSx2fO
 OnZKZM9Gnp1BIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJrCXckAAoJENju1/PI
 O/qak8wQAJW/V4avOii36Nb4bstRttWUeXAynsEWjjsqsgu5h7a6Lnc9xd5ygLQWm+yzm0em4SD
 /tGa9InfBkQ/v/PliKRCwBicQzFZiIGOu/X14MmuCvDQZyqLuT8tkLE3oQp5nijnPtnUZv69TEc
 fecv3vMB0OlmUJMjVsgjEVmhUIevwJYa2eiwFnC7K4z4RraM3SPQ0ToMGuwPGtZHCJBR2K47hy0
 bpf1k/oCTVklTADOv4fQiPZnw+jYcLdxhLcHQb/4R5sJqDEpCrGGtiB4HHO6zosF8b1cYWGePnB
 B3S0j6+tXYTiO/JcPOig5JZiUDm132IpNbotir0/jmCrpLfGx2L+YiJ5iuALZ24zLk8/5ncgFS4
 PR1raTWBZ2TmQI2iLyaV3V/GI+PGv4fN22F7Uma8x0dqYqhBhsnIyxf3eBjrPOk6Ru2gMcdTsWa
 27+IEcitcsaNMplbjSP8IZtCeCPLc4wR2YQBB/LvH60+YJ49hf6dDazS9eYqT1VfQQXerGW/VMZ
 2rNLVgc9bRWZ4XdECAdJuzZvPN96UHnNlfJPo6qe0JVYzzewsl2VR1MSF+GZJiT471hR2yY9tmr
 /oZANuggPqebwL6tOSt2rF8BZui0A8cTkxiDG2fiWiOnmoeqIamRvIQhesfHTBQ5OFLxcVE/bw3
 acz2n8Dp3o3YN89XBI9Mu4w==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_042723_485527_25598053 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Power-off and restart handlers run very late in the shutdown sequence,
when only one CPU is left and interrupts are disabled. I2C has long had
atomic transfer support for this, and SPI recently gained it as well,
so that PMICs can be told to move the system into poweroff mode.

Most PMIC drivers use a regmap with the default mutex locking though and
that may sleep. On a Radxa ROCK 5B+ (RK806 PMIC via SPI) with lockdep
enabled this results in:

[ BUG: Invalid wait context ]
systemd-shutdow/1 is trying to lock:
(rk8xx_spi:91:(&rk806_regmap_config_spi)->lock){+.+.}-{4:4},
at: regmap_lock_mutex+0x1c/0x30
...
Call trace:
 mutex_lock_nested+0x44/0xb0
 regmap_lock_mutex+0x1c/0x30
 regmap_update_bits_base+0x40/0x90
 rk808_power_off+0x70/0x110
 sys_off_notify+0x48/0x80
 atomic_notifier_call_chain+0x74/0x130
 do_kernel_power_off+0x5c/0x80

Detect this stage using the same check as the I2C and SPI cores and
just skip the locking as the regmap cannot be accessed by anything
else at this point.

Note that writing a cached register, which is not yet present in the
cache, may allocate memory in regcache_write() resulting in a potential
sleep. But this is not a problem in practice, as registers used for
power-off are usually volatile.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/base/regmap/regmap.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 0ba82fcc55bf..e73c4df194e5 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -440,15 +440,29 @@ static void regmap_lock_unlock_none(void *__map)
 
 }
 
+static inline bool regmap_in_atomic_shutdown(void)
+{
+	return system_state > SYSTEM_RUNNING &&
+	       (IS_ENABLED(CONFIG_PREEMPT_COUNT) ? !preemptible() : irqs_disabled());
+}
+
 static void regmap_lock_mutex(void *__map)
 {
 	struct regmap *map = __map;
+
+	if (regmap_in_atomic_shutdown())
+		return;
+
 	mutex_lock(&map->mutex);
 }
 
 static void regmap_unlock_mutex(void *__map)
 {
 	struct regmap *map = __map;
+
+	if (regmap_in_atomic_shutdown())
+		return;
+
 	mutex_unlock(&map->mutex);
 }
 

---
base-commit: 222b61e9c570dac6c7a786d039e4c226624b426d
change-id: 20261127-regmap-atomic-shutdown-ba5a1c988107

Best regards,
--  
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
