Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 490CECDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TdSURZ6rvX5138wUHSjpB7Zj7TNdSDUoAWQG7ZG1A8=; b=iwgYclE/x0Izyo
	m3raeST5k6WgA/3oeDeoSlgVCgbN4lYw+AsdAO6V0X2mhhVODdnCPTE9Qsx948h6k5b0Im4gukahr
	tine/QuDVKZhcmkU8cDvW3iQDG66v4PscY6TWLqTVjHaR17U9L95HBJjR27PDrjmFlGfDDsYT5I16
	n7FJ0vAjx5ciVPTCJ+jwH1yaJznsp/hRN4IZdNdjw44r8LaKpE2+vUoI0hlTQaVgvwNTIHtAN8go+
	sL0WOIMmPmwGLtvTJACbBZam5dyLN6cap0dfHin+AKt4OhiT612xF07dUckZZ92sYZqyX+b562BhD
	NZtHy2HMXEFkctl9Gq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTxk-00ATZO-1c;
	Mon, 16 Oct 2023 20:13:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTx6-00AT0J-01;
	Mon, 16 Oct 2023 20:12:39 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwv-0000QB-N5; Mon, 16 Oct 2023 22:12:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND] arm64: dts: rockchip: Enable UART6 on rock-5b
Date: Mon, 16 Oct 2023 22:12:21 +0200
Message-Id: <169748713685.982818.10370710928002239372.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013215208.81345-1-szucst@iit.uni-miskolc.hu>
References: <20231013215208.81345-1-szucst@iit.uni-miskolc.hu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_131236_174149_E93042FA 
X-CRM114-Status: UNSURE (   8.95  )
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

T24gRnJpLCAxMyBPY3QgMjAyMyAyMzo1MTo1MyArMDIwMCwgVGFtw6FzIFN6xbFjcyB3cm90ZToK
PiBFbmFibGUgVUFSVCBsaW5lcyBvbiBSYWR4YSBST0NLIDUgTW9kZWwgQiBNLjIgS2V5IEUuCj4g
Cj4gCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxl
IFVBUlQ2IG9uIHJvY2stNWIKICAgICAgY29tbWl0OiBhNjE2OWFiMzY5MjM2ZjE1Yzc5YjQ1MDM3
MDc0YTI1NjdkMzBiMDM3CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
