Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 461EAD2F338
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 15:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgvNFGZYc7rt8zLOmoeGGFmGKL103lBU5a8VIsZMFF4=; b=Nm12vNIJWIlSzT
	zHN0B3oiNF6tHpSytqz2M0gtB/Pi0Fw+gso/4ujfI4njl/v4NjGu9cypsSitdLlTdHBkMskHR4JxI
	qeFiQ8wN1AmtxwUoxTBIjsBXyBp1O1hIkzEnvHlaaU5tvuFBw2rueBhD6uYyyNSEQLEJbm5kSJPw2
	BIptaseAR98ad49eK4MGY/qHHQtUeNKK60aWuuRwTiLw7c99eK6kCpgzrKiMk4sMvn1MmJTJrnzHe
	2X4ErTODPIcrCWALxEnFI64zdHviJUya3MmzSkgDvpQtxvGz4oOwOPQZECB0jz4jiOp1yzZk8N7W5
	UGmvSUb7U7O8NLr0cTmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfgJb-00000007Mzl-33VO;
	Tue, 13 Jan 2026 15:28:15 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfgJW-00000007Mug-31Gu
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 15:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:content-transfer-encoding
	:in-reply-to; s=k1; bh=SgI6znnKNqjv67rui8uZ8o9dmxfy1sWpcCUyA+Jcz
	kk=; b=cNc169Korl/6TxVMCh5WZOsk774hbswKmcJ5vJBx1lq9fE5e7edW5HPz1
	qguCmN+Afd81EJRCJRF9ihKxps8C1gR/gg7FqPT+HX8LKkG7J2GovSzLpdTOmyxl
	I27CnY0pfJb9kOXGJDYyQESV27HScSyQtq6NWVm+WZuuMByS3dQgK6TLgnb/KnrE
	IP4FiC3dFPqTCe7YMJrVF8zRXjqijVFySYRDTvUYUcE3VQqVsaFZ+TfBcLI76Z7W
	njdsTbkGqHsijVfSIn5mh161Vnj85Hp7iCLiDfigYy8qMesOSRqQigGs4I73vFBK
	U70kO6uFMY2sYsCrXEgQvaumu5NXw==
Received: (qmail 1751517 invoked from network); 13 Jan 2026 16:28:03 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Jan 2026 16:28:03 +0100
X-UD-Smtp-Session: l3s3148p1@VJwxo0ZIgpgujnvx
Date: Tue, 13 Jan 2026 16:28:01 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Andi Shyti <andi@smida.it>, Qianfeng Rong <rongqianfeng@vivo.com>,
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Khalil Blaiech <kblaiech@nvidia.com>,
	Asmaa Mnebhi <asmaa@nvidia.com>, Andi Shyti <andi.shyti@kernel.org>,
	Qii Wang <qii.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v1 0/7] i2c: busses: Introduce and use HZ_PER_GHZ
Message-ID: <aWZkgeWwjkcWXPcT@ninjato>
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_072811_069008_ADE5CAFF 
X-CRM114-Status: UNSURE (   8.38  )
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMDI6NDY6MDhQTSArMDEwMCwgQW5keSBTaGV2Y2hlbmtv
IHdyb3RlOgo+IEEgZmV3IGRyaXZlcnMgZm9yIEnCskMgaG9zdCBjb250cm9sbGVycyB1c2UgSFpf
UEVSX0dIWiBpbiBudW1lcmljIGZvcm0uCj4gVGhpcyBpcyBsZXNzIHJlYWRhYmxlIGFuZCBwcm9u
ZSB0byBzdWJ0bGUgbWlzdGFrZXMuIEluc3RlYWQsIGludHJvZHVjZQo+IGEgd2VsbCBkZWZpbmVk
IGNvbnN0YW50IGFuZCB1c2UgaXQgaW4gdGhlIGRyaXZlcnMuIE5vIGZ1bmN0aW9uYWwgY2hhbmdl
Cj4gaW1wbGllZCBleGNlcHQgb25lIGNhc2Ugd2hlcmUgNjQtYml0IGRpdmlzaW9uIHJlcGxhY2Vk
IHdpdGggMzItYml0IG9uZS4KPiAKPiBBbmR5IFNoZXZjaGVua28gKDcpOgo+ICAgdW5pdHM6IEFk
ZCBIWl9QRVJfR0haCj4gICBpMmM6IG1seGJmOiBVc2UgSFpfUEVSX0dIWiBjb25zdGFudCBpbnN0
ZWFkIG9mIGN1c3RvbSBvbmUKPiAgIGkyYzogbXQ2NXh4OiBVc2UgSFpfUEVSX0dIWiBjb25zdGFu
dCBpbnN0ZWFkIG9mIHBsYWluIG51bWJlcgo+ICAgaTJjOiBub21hZGlrOiBVc2UgSFpfUEVSX0dI
WiBjb25zdGFudCBpbnN0ZWFkIG9mIHBsYWluIG51bWJlcgo+ICAgaTJjOiByazN4OiBVc2UgSFpf
UEVSX0dIWiBjb25zdGFudCBpbnN0ZWFkIG9mIHBsYWluIG51bWJlcgo+ICAgaTJjOiBzdDogVXNl
IEhaX1BFUl9HSFogY29uc3RhbnQgaW5zdGVhZCBvZiBwbGFpbiBudW1iZXIKPiAgIGkyYzogc3lu
cXVhY2VyOiBVc2UgSFpfUEVSX0dIWiBjb25zdGFudCBpbnN0ZWFkIG9mIHBsYWluIG51bWJlcgo+
IAoKRmluZSB3aXRoIG1lOgoKUmV2aWV3ZWQtYnk6IFdvbGZyYW0gU2FuZyA8d3NhK3JlbmVzYXNA
c2FuZy1lbmdpbmVlcmluZy5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
