Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB661C27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 08:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ddS9H1QuBVU0Sme7kg1f2O1VDpXwzLi9zM19tdOiFZM=; b=0ENMf8o7qxdy71
	oIVX6/pnvchGyG8qAaQr8H9NT9Sr8uELLjWtQHwFxgbjHpfiGCAqxYgLReIwL8oJv6W8Xz/Vbkrih
	Ff3etCbLAxcMD+U5zHadFc/vsCp12gJftQpWaq130iU/2YQDxY7HEapii+2yiASIiYYbj8+pc0zv3
	SBJovweS2AIyheUhk3kgeaqO4WMXpDDYAFXHmJFa5lgtvhAN71mEgoZWi7EqqGIMBgOuvQaeNvjsN
	tjVk7yEKRqCEtpUh+DAV8Okw5U3oOdiqs4MF+5hMUpor6v6w8zR4wRrXxW1Nr/Y5pqrq+5C/Zn+ZP
	SBXUGU8gbwX9/B8qNm0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7Se-00000009o7a-2efH;
	Mon, 17 Jun 2024 08:11:32 +0000
Received: from mail.salesoptimize.pl ([162.19.245.89])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7Sa-00000009o4J-2qcr
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 08:11:30 +0000
Received: by mail.salesoptimize.pl (Postfix, from userid 1002)
	id 3160746DD0; Mon, 17 Jun 2024 10:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=salesoptimize.pl;
	s=mail; t=1718611887;
	bh=u+y/L6S5UL+8vZAxwL74vV1B6m8M84m9zI1fQPT/Bfs=;
	h=Date:From:To:Subject:From;
	b=I2KGWRFV84kGjAlOXfXgCwbd1ZRVylTtmzhNVzXXz3cD4ttRYKkRbgMNmWuy5iiI3
	 ZsHsOlo4YL6+/s8llxf8/o60CtQ5Dgkk21LvzAJsC7aPPSorvUjNdR9fdbQchS4hqj
	 KTZqlJpeUiNHA7bo5KssN7/Vwb/5kIVj4Mn8qcSS4hRKrzReL2pAuv+BDMZzBqlaCo
	 8/cOLDDkrhYHTZYT9cKr7z804WrXrRYmj+n4l44Jtxaf/tKquThkU8gBGb8adl3i+W
	 BQZhwG6sBzrhhKRIggOZy7dagndk5kHx/v4WZ5EaUuaMxQqRpSQOKCUcsNqx1vQzlJ
	 6Skpk21xwjy/A==
Received: by mail.salesoptimize.pl for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2024 08:10:47 GMT
Message-ID: <20240617084500-0.1.31.oew9.0.doir4rpa7z@salesoptimize.pl>
Date: Mon, 17 Jun 2024 08:10:47 GMT
From: "Tomasz Wawrzyniak" <tomasz.wawrzyniak@salesoptimize.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Odroczenie_zap=C5=82aty?=
X-Mailer: mail.salesoptimize.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_011128_960869_9349BE19 
X-CRM114-Status: UNSURE (   0.19  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

U3phbm93bmkgUGHFhHN0d28sCgpjaGNpYcWCYnltIHphcHJvcG9ub3dhxIcgbW/FvGxpd2/Fm8SH
IHd5ZMWCdcW8ZW5pYSBva3Jlc3Ugc3DFgmF0eSB6YSB6YWt1cGlvbmUgcHJvZHVrdHkuCgpNb2ds
aWJ5xZtjaWUgesWCb8W8ecSHIHphbcOzd2llbmllIHUgc3dvamVnbyBkb3N0YXdjeSwgYSBteSBk
b2tvbmFteSBwxYJhdG5vxZtjaSB3IHd5em5hY3pvbnltIHByemV6IG5pZWdvIHRlcm1pbmllLiBQ
byBvdHJ6eW1hbml1IHDFgmF0bm/Fm2NpIHd5c3Rhd2lteSBQYcWEc3R3dSBmYWt0dXLEmSBzcHJ6
ZWRhxbx5IHogb2Ryb2N6b255bSB0ZXJtaW5lbSBwxYJhdG5vxZtjaSAoMzAtOTAgZG5pKS4KClPE
hSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSB0YWtpbSByb3p3acSFemFuaWVtPwoKClBvemRyYXdp
YW0KVG9tYXN6IFdhd3J6eW5pYWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
