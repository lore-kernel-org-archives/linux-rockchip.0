Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6E606A32C
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 19:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SEjGFSlb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mail.ru header.i=@mail.ru header.a=rsa-sha256 header.s=mail4 header.b=CpqfL/8m
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Cc:To:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=NVXJtIB1luMpy1OfOACZMw2UQHEs57SYGIgebr/tewk=; b=SEjGFSlb8h5UYjFLG7pNVj9j6e
	kqCfrZye4sXFz56tzJucRm1mjoWAhpRm+6hMYfbIx1e6eXbQTGmv9UpHBFpHFaPMBmrWOroO8t8Me
	H69pyDmBrsAlEMglabNBha0z4MDNCoTLAkMMdY9IxuIiToVWc9rsR+FsYgb22DwUt7PfJ14LX791d
	eXj2oCGhf8Wa10sEm0srsH6dLu92n63ZZHzcqMO9F/rXPrPZBRO+uOJONc8UWq07Mefqtz5RzaP8u
	0/WCJEhcAllBwFFg34X1ppSEMbQ9FGs2gpnh27wUT4rI+xtQwtbRhfbcLDEnfkZ/aS30Wnh4yNAhj
	c25q8xDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqak-000000004zO-0ouT;
	Sat, 21 Nov 2026 19:17:42 +0000
Received: from send196.i.mail.ru ([95.163.59.35])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqah-000000004yR-1obd
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Nov 2026 19:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail4; h=Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:
	To:Subject:Date:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive:X-Cloud-Ids:Disposition-Notification-To;
	bh=Jf8TjWzzg6jRgsZyWbKBF2HVD7goonLz0jH8wHEmBL4=; t=1795288659; x=1795378659; 
	b=CpqfL/8mAWL3fI38hMvqo6JGhb5qH3pTWaH6YhrvpDMeJDh/hTkQDVK+OMDDB/yQyssh+DKwVkV
	cC5gQ/ea7yFMPm2BKsaH+cGZ6V1pNCmJZWHR9Gpz3KoYiKk205KbWi921UL8wVZOmSwHM9M+ZT2KJ
	fLYFEOQx1imB3cTvuj+Mwlyek+u7BuPNq4Hy7P9lR5766FqjzF+eryk8hMwEfcrFHdjIzEmk8HFf7
	OMEKEMJxZZwdk4LUXDBfmbu4E6P3YjCXaJahZn3kzZoguocWIy4n/LYE3RzoJ/UIj65QJJmgJzHvn
	v6qiCE29WjVmbVHYhzLsgL7b+W0ytT/k53FA==;
Received: by exim-smtp-canary-30-7cf57c478c-r57gp with esmtpa (envelope-from <mihail75rezh@mail.ru>)
	id 1xUqad-000000007GX-19fX; Sat, 21 Nov 2026 22:17:35 +0300
From: Mihail Chichkanov <mihail75rezh@mail.ru>
Date: Sun, 22 Nov 2026 00:17:34 +0500
Subject: [PATCH 6.12.y] arm64: dts: rockchip: Fix the headphone detection
 on the orangepi 5 plus
To: stable@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, maud_spierings@hotmail.com
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-ID: <179528865462.218485.15638384076200258585@mail.ru>
Authentication-Results: exim-smtp-canary-30-7cf57c478c-r57gp; auth=pass smtp.auth=mihail75rezh@mail.ru smtp.mailfrom=mihail75rezh@mail.ru
X-Mailru-Src: smtp
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9749DDC91F62168F92C5CC3D78C1F4129358BF2273B6E1791182A05F538085040075ECD77E4C768E23DE06ABAFEAF670560228897B6CCCF03BB118A53624920319B5A245099E42150
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE77FAFB841CE9024F9EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637AC83A81C8FD4AD23D82A6BABE6F325AC2E85FA5F3EDFCBAA7353EFBB55337566B47933B1EBDEC5AF0AEBD2D2A2E2144E3DEBE816E3DF467437CE6863529BA4308EEF46B7454FC60B9742502CCDD46D0D1D471462564A2E19F6B57BC7E64490611E7FA7ABCAF51C92176DF2183F8FC7C0DCF4F0DC832992758941B15DA834481F9449624AB7ADAF37BA3038C0950A5D36D5E8D9A59859A8B6EF4F263D53ED27E576E601842F6C81A1F004C906525384303E02D724532EE2C3F43C7A68FF6260569E8FC8737B5C2249EC8D19AE6D49635B68655334FD4449CB9ECD01F8117BC8BEAAAE862A0553A39223F8577A6DFFEA7C5086E01F7E57E25B43847C11F186F3C59DAA53EE0834AAEE
X-C1DE0DAB: 0D63561A33F958A5061AD7FC1F29CA615002B1117B3ED6968F96C547BFF83310886DC9BC01168B20823CB91A9FED034534781492E4B8EEAD713B47673A37264BC79554A2A72441328621D336A7BC284946AD531847A6065AED8438A78DFE0A9EBDAD6C7F3747799A
X-C8649E89: 1C3962B70DF3F0AD73CAD6646DEDE1918E10F71CB4DF9F9677DD89D51EBB774225B6776AC983F447FC0B9F89525902EE6F57B2FD27647F25E66C117BDB76D6592E6E8B57109026E3C53128AEF4228C0AB7FA4A49DE91A442DB750726E69888979EBEACBA2D2645DAB8341EE9D5BE9A0AD94D56CE0F035820C5B33FFBEB88F2A3E7874AC9457E3733C7CEAA0681F5848F4C41F94D744909CE24EEEB59A186B1012BC612C73171380F8A6692EB6A46169083DB18EBE73F7D69
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXOcIETfglQORZ0zpDET4Zrk3igikrdHlWAam9zhZ1KWkm5/lFOSIJYM=
X-Mailru-Sender: AC85C63E67562A65F584232FF5CACDECBCAA2B8CBE6AE8B03DE06ABAFEAF670560228897B6CCCF031D93E9944352DD8137C641616DBB8FEE91296853BA92DB571669B47AD10F0EF10BAD65F17811557DBDEB696115404FDD7B061B403C924453C77752E0C033A69E3453F38A29522196
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_111739_479194_1A687F09 
X-CRM114-Status: GOOD (  13.76  )
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

commit 897658383257 upstream.

The headphone detect pin is active high on this board, but the DT says
GPIO_ACTIVE_LOW, so the jack is reported as unplugged when headphones are
inserted: the "Headphones" DAPM pin stays off, the headphone amp enable GPIO
is never driven and the signal goes to the speaker amp instead. Result is
silence on the 3.5 mm jack.

Verified on a 6.12-based kernel: with ACTIVE_LOW /sys/kernel/debug/gpio shows
gpio-59 deasserted with headphones in and "Headphones Jack" reports off; after
flipping the flag to ACTIVE_HIGH the GPIO reads asserted, the jack reports on,
DAPM shows "Headphones: out 1", the headphone amp enable GPIO goes high while
playing, and sound is audible in the headphones.

The property is named hp-det-gpio here (it was renamed to hp-det-gpios later);
simple-card-utils.c asks for gpiod_get_optional(dev, "hp-det") and gpiolib
looks up "-gpios" first with "-gpio" as a fallback, so the flag fix applies
as-is to 6.12.y.

Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5-plus")
Signed-off-by: Mihail Chichkanov <mihail75rezh@mail.ru>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index dd4c79b..2082717 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -120,7 +120,7 @@
 		simple-audio-card,aux-devs = <&speaker_amp>, <&headphone_amp>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,hp-det-gpio = <&gpio1 RK_PD3 GPIO_ACTIVE_LOW>;
+		simple-audio-card,hp-det-gpio = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,bitclock-master = <&daicpu>;
 		simple-audio-card,frame-master = <&daicpu>;
 		/*TODO: SARADC_IN3 is used as MIC detection / key input */
-- 
2.50.1
---
Requesting a stable backport: 897658383257 carries no Cc: stable, so
linux-6.12.y still has the inverted flag (line 123 of the board .dts) and the
3.5 mm jack on this board is silent because of it. The change is one line and
has a Fixes: tag. The property is named hp-det-gpio in 6.12.y (renamed to
hp-det-gpios later); simple-card-utils.c asks for gpiod_get_optional(dev,
"hp-det") and gpiolib tries "-gpios" then "-gpio", so the flag fix applies
as-is. Tested on an Orange Pi 5 Plus with a 6.12-based kernel: with ACTIVE_LOW
the jack reports "unplugged" while headphones are in and gpio-59 reads
deasserted; with ACTIVE_HIGH the jack reports on, DAPM shows
"Headphones: out 1", the headphone amp enable GPIO goes high while playing,
and sound is audible.
If DT-only changes like this are not wanted in stable, please say so and I
will carry it downstream instead.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
