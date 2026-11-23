Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E983606A330
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UkU/P9pw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=TA2UmHFH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=35bkT/XfqpzYHMg6vEXnhAh+fQxcI5NCboKA0vDYiAI=; b=UkU/P9pwHlzj8WGbVigELWoL3H
	Eybrc0O2ufz/K5vvpmOzsuIYWtE/jT38sAc0NEt9tGpwl5qnf3FGDa6jGMslCfWRvwmHTaXCB4D+b
	FPqk9LiNf/Z+sBJhpI4SSZQB8rnHtxm+DBsEbIZ5I0HOtByoH98w0U+NfJ3/Y0Fbrm5MS/7NiJA4T
	t1hY6qoVNf1iRct0iADvaaeyw2qVJX0BYch6pFkDH/XS9TZvqNLDjMK7rq+2C3eT0xCO6HamJBGBB
	OMhR57OQklgSyuMBVy3oZASLeEDlHcW+GSrd3cTg6S0f+4uMpgUId13AZ0hPdCuE5FunfBjly3nzc
	KDAPLTBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5P-000000041DH-2w9q;
	Mon, 23 Nov 2026 15:36:07 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5A-000000040z3-0oZi
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:35:53 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a5177d78c7so33435185e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 07:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795448150; x=1796052950; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1sAjlUWvCwhkxG8QQaXDXYVkbIkuGAQ5dlUtzYiRWcA=;
        b=TA2UmHFHS+HDwbMgcfuQ99Q9y/+o/bM0bgq3Sj1LqTKHpS8pC7sGnWrwNAK78HVctb
         nRDtc9k51t8rbDLS8smWMC1FEyhEKlgQIFo+5Nw42orR3AtJVO5TXvvmpvcYDbJKzJJQ
         vLjSeH0ZRCDoKP0JQU2+2miXlcQpxtSjBs0nQQ0gyif6pYfKLEKvW74FKDlKTPEJjiS5
         MMO0fuXZ0Eqmo5FNua0osSMMD361FrzD0uj4WQ/potykd4XC7Evo+RfKWtgaDDYxUrAz
         BPagxnB658LIewXliU7bdKb6ufeG0tuNtkhnbKcd1l0Rfe3qS8gBYRRT8a9LkxMsN0vM
         KQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795448150; x=1796052950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1sAjlUWvCwhkxG8QQaXDXYVkbIkuGAQ5dlUtzYiRWcA=;
        b=dI0sZiUPV6hs1UdocjDIizIiTIdgGWvp/RSWiSq3XxtLPxzeGLwo8ub5wRWlNnqUgk
         WLkOOL+ArP++6pYkaYSDnjiaKJOGj4xlCC1pzhW8x0rPezGXH2Esk5lhWMk5uuKqkEZt
         kh1+Vg2wzrzTWnZp4OwiGC6p12OmcQsWfSjmXbNS4jDkEHAmTMO4q4Ku45P8HeH0PBht
         oCRBOn03i65Fm+PNmjxs85xnCTewsijBCP2SvKhI93ZjRGemJi8XUPKJ4W24T3VQh0bh
         2yWIJewiVoVrdPR79pyjBF1B53pJ2KyqxKm7DUdMbdl7w9fh0xwMhpfrlKajMllKlkQB
         fONg==
X-Forwarded-Encrypted: i=1; AL+hErFrjsJgnPscvAVd9lgAXFTYYzdreHagEIViO+DMS8WqHZf9sSPl0mWN22TV4BEIZ2Hn/2Xr22BFIrthHKOcOQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+gWzy/Aa5hh85zz3EQUF3Yj7Gb6bJ07RoaH8DJp8H934SPe0NY
	fYegT8t4pd0fnkjIVmepTKgQoBGh6b7R9x7qVaInFrMcnm7krP3rf81ElG91wWE2l2w=
X-Gm-Gg: AZFdTZdRXmN+3ceAuMAbh6bo2dtUpQtPRdlOmGD9eVfZagwJQppC1sdPUD7spkzYJAg
	OmrxZXy+xiXoruwU2L0Aw+HxOzw9ifXWfz2VgXRL9/VzcU6KCyBZLFdTsCb9oiCKJYYtQvpn0xx
	uR3gkL2thBKnllP5guR7B/EguLgqPaa4a7IL+bFP4buh8wbp+ufOAqlWXc8Q9/rAIjlCmq/2gLQ
	8xtQnyZ+3kP1jf9CZa3rU8S7+Wh8GOTHtnKjBLYjqxuFRo/Ii9u14DcG3Mh/xswQ9vXHyuUtDkI
	qieL5qLpGxRlTLgGGU3Pz/Yo7eWuiPflwcc4SSR7G4nIKHCn6Ha89/OSLPh5yYLXRJEtjU+gXWC
	v7TM+xC/mx9S7pT6m4zFoMiEcEAu5i+90YEFuAprTXxmuyzIB9xdeGFwzG7kaH9I8TjtO5ltAo3
	XDHFnSl+xzZ0P5ImLQ5dd1UPw2In39X64RyzrxiIGythz3ka6JKPLwQAz9MlFY9L5WWS5U2LZ1m
	W/w3MgzWeZlJPKFohma9qDXtuqbF0pwHznvdt+OJVwBk1FnWv1h9mYKRiuniU2whoWXZHUy7hbm
	yplg48d45L4XPJUjj8iPSVpEoTvVVPKg8ppYCo2fAB3q/PnmY6LRJ0TuZTfvLi2ITIzafOLgNYu
	RIF6cfqZOng==
X-Received: by 2002:a05:600c:46d3:b0:4a3:12fb:1ee7 with SMTP id 5b1f17b1804b1-4bb88812c9dmr250483325e9.25.1795448150650;
        Mon, 23 Nov 2026 07:35:50 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853a1e8bsm305917455e9.9.2026.11.23.07.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 07:35:50 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 23 Nov 2026 19:35:37 +0400
Subject: [PATCH v3 3/5] nvmem: rockchip-otp: Derive MAC addresses from the
 CPU ID
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261123-rk3576-otp-cpuid-mac-v3-3-40c756dcf36f@flipper.net>
References: <20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net>
In-Reply-To: <20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4534; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Z7QZS1DoRcR6OqeFUfvFEEWGwZQRoyygyNK/LxTYDrk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzxHp9sFp4ZuvlwG1RL5qmePaxqO1ufVIik1ZckV2hc
 y9M2rK3YyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNIx1jFi4OIUgKk+oM3I8FmjJcDHaPrEB868BXpXlWW3ak/YzcwcecMgSs1k6hWBOQz/UyPfVaS
 mfK7lsZDmOHygeZ1eybbt6lM0FR2uNkkozFnIAQA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_073552_278983_5C0DDEE9 
X-CRM114-Status: GOOD (  22.92  )
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

Rockchip bootloaders derive stable Ethernet MAC addresses from the CPU
ID in the OTP memory and patch them into the device tree they pass on.
Kernels started any other way, e.g. straight from the SPL in Falcon
mode, end up with random addresses which change on every boot, even
though the CPU ID is just as readable from Linux.

Implement the derivation for cells marked as "rockchip,cpuid", handing
the result to consumers which ask for the cell as "mac-address", such as
of_get_mac_address(). Leave the CPU ID unchanged for any other reader,
so that the same cell keeps serving the ID itself.

Follow U-Boot's rockchip_setup_macaddr() exactly, so that both yield the
same addresses: hash the CPU ID's lowercase hex string with SHA-256,
take the first six octets as a unicast, locally administered address,
and XOR the cell argument into the last octet, which is how U-Boot gets
eth1addr from ethaddr.

Hooking the derivation into the OTP provider rather than a separate
layout means it works with any fixed layout of the OTP cells, and needs
no per-SoC knowledge, as the cell already gives the CPU ID's location.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/nvmem/Kconfig        |  4 +++-
 drivers/nvmem/rockchip-otp.c | 45 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d2f5bb236663..5776d4e4b391 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -448,9 +448,11 @@ config NVMEM_ROCKCHIP_OTP
 	tristate "Rockchip OTP controller support"
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on HAS_IOMEM
+	select CRYPTO_LIB_SHA256
 	help
 	  This is a simple driver to dump specified values of Rockchip SoC
-	  from OTP, such as cpu-leakage.
+	  from OTP, such as cpu-leakage. It also derives stable Ethernet MAC
+	  addresses from the CPU ID, as Rockchip bootloaders do.
 
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem_rockchip_otp.
diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 7eb834516ab4..82c87380b2c0 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -6,9 +6,12 @@
  * Author: Finley Xiao <finley.xiao@rock-chips.com>
  */
 
+#include <crypto/sha2.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/etherdevice.h>
+#include <linux/hex.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
@@ -67,6 +70,8 @@
 #define RK3588_AUTO_EN			BIT(0)
 #define RK3588_RD_DONE			BIT(1)
 
+#define ROCKCHIP_CPUID_LEN		16
+
 struct rockchip_data {
 	int size;
 	int read_offset;
@@ -319,6 +324,45 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 	return ret;
 }
 
+/*
+ * Derive a MAC address from the CPU ID the same way Rockchip bootloaders do
+ * (see rockchip_setup_macaddr() in U-Boot's arch/arm/mach-rockchip/board.c),
+ * for consumers asking for one. Everyone else gets the CPU ID unchanged.
+ *
+ * The cell argument is XORed into the last octet rather than added to the
+ * address, matching how U-Boot derives eth1addr from ethaddr.
+ */
+static int rockchip_otp_cpuid_pp(void *priv, const char *id, int index,
+				 unsigned int offset, void *buf, size_t bytes)
+{
+	char cpuid[ROCKCHIP_CPUID_LEN * 2];
+	u8 digest[SHA256_DIGEST_SIZE];
+	u8 *mac = buf;
+
+	if (!id || strcmp(id, "mac-address"))
+		return 0;
+
+	if (bytes != ROCKCHIP_CPUID_LEN || index < 0 || index > U8_MAX)
+		return -EINVAL;
+
+	bin2hex(cpuid, buf, ROCKCHIP_CPUID_LEN);
+	sha256(cpuid, sizeof(cpuid), digest);
+
+	memcpy(mac, digest, ETH_ALEN);
+	mac[0] &= 0xfe;		/* clear the multicast bit */
+	mac[0] |= 0x02;		/* set the locally administered bit */
+	mac[5] ^= index;
+
+	return ETH_ALEN;
+}
+
+static void rockchip_otp_fixup_dt_cell_info(struct nvmem_device *nvmem,
+					    struct nvmem_cell_info *cell)
+{
+	if (of_device_is_compatible(cell->np, "rockchip,cpuid"))
+		cell->read_post_process = rockchip_otp_cpuid_pp;
+}
+
 static struct nvmem_config otp_config = {
 	.name = "rockchip-otp",
 	.owner = THIS_MODULE,
@@ -328,6 +372,7 @@ static struct nvmem_config otp_config = {
 	.stride = 1,
 	.word_size = sizeof(u8),
 	.reg_read = rockchip_otp_read,
+	.fixup_dt_cell_info = rockchip_otp_fixup_dt_cell_info,
 };
 
 static const char * const px30_otp_clocks[] = {

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
