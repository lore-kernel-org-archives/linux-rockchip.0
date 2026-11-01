Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6622C606F6B1
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OZy/3l8C;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=HbHfQM7l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=PFX7bvyL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hGDGRKy6y37h6pCRgmnlcrbfz2VtdjQNQol42LTOIAY=; b=OZy/3l8C25/T30NuseEETZqX9+
	w/WXjnsD1oLBeAtvCI3JNAvONvAkE7DBPHpO6pkjOwa38Gnnb+hsY8dooxbpaygcP338x6kzIAa4M
	Z0xeD7B2dLwVXIVbqkqNhhy20Ep3EjlvTT38jBiCcFInkWaxi4nLeNhOADIy+/a3yeaoq5/E0Cb2f
	3/VJJpwOfsIGZeqOY/wvZrtJB4NtHSCHUaUiHSGqMQF0O6H/TaZRXEQNfZA83Vj3/lk30DeeriF4s
	x3f+neWKqqrCqaVoPTrAgm0A5W44Vj9TeNZB/CE5GpfX06xN8LtU+lgrY1yvJvT010yisS2B732xB
	2q0RDMHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdrg-0000000F3Im-2rxD;
	Sun, 01 Nov 2026 22:17:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdr9-0000000F1JS-0IOq
	for linux-rockchip@bombadil.infradead.org;
	Sun, 01 Nov 2026 22:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GYQJ26ybopccUNbhVj27BJdx0uHeN+9HfKodWNhkEeg=; b=HbHfQM7l1lnIG9MLDGb05yIoQn
	b6Ve9hAeBe0rQnpxCumFDXh6Onj1/3sOKKWlB3jRX/FvvKzFkxSE05NUNfD87dXyLjzeGhS/a/hz3
	EouXZa3xZtNpJtgCZDleyrJ/cWguTT9mfiekmB+5p310fgtAVU0V2en+hlNQeSHPJEEa+xhnTE6Ek
	v4M8Li2sgMcshNTb+QxWK/z1DsZk8C1Upo1gl34RXbrZO71djcPOQHSCAUhLWLugM2qovQ0/1rBo5
	ODTy4e16E4U1oRi5n5TtAKNiQs1aoW747S2md/sphHc7NfgGDNvTTjCq395LIKTy5nvf3Px9HRb1/
	DRATPxTA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqg-00000001seb-3BWL
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 22:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GYQJ26ybopccUNbhVj27BJdx0uHeN+9HfKodWNhkEeg=; b=PFX7bvyLTQ1AZti3YlmsOTtQye
	vZXLwFyiMNUH48OCY6Mc8yEzBdaiFD4BLXUNjdv22fBi59a8u4yATOSseM9Wqcl46ota7X2aTi0p4
	vidV9azk0zsqaIcCyRRAKBMAXRLAjOJ6MisvfMLKLdBnad1v9RYM3MlKQljWTanEumW0G8Mxj5i7a
	7/GYSbEa+fnr5kN8tnsp+cHUtTTfE32DXnrW0ZlAe+klaBzq+DtVeDFynZ9ylQRECAr1zrcap00er
	KJRfMGvgl42dBsIOQhMqGdutG9pPUsZDBsxqMXuwL1BxZxw0ihz1cW82fdcBaZxVebYKoCcS3tNxa
	nWFFy2Ag==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add icm42607p IMU for RG-Vita-Pro
Date: Sun,  1 Nov 2026 23:16:12 +0100
Message-ID: <179357136482.4108155.972231483096008168.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026152649.1576867-1-macroalpha82@gmail.com>
References: <20261026152649.1576867-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_221646_817563_89B69FEC 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 26 Oct 2026 10:26:49 -0500, Chris Morgan wrote:
> Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
> was tested with iio-sensor-proxy and reports correct orientation.
> Orientation is relative to panel physical hardware which is rotated 270
> degrees in software.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add icm42607p IMU for RG-Vita-Pro
      commit: 4a17cc3bd48ecf4dcb7df2b26538e0d28e35d873

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
