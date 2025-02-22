Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49DDDC021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 04:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMnihJh6K0yTB278JU/Gv2qfTv1+o62wi62dElfiSdU=; b=h5r5WgDTm4+QSV
	eczu2gjunyiJSFOUw0NEfFTKGC1Du4+KocwhbMdvbt87/LVnW6JjVSIcAPE7WOEJJBrYZMthsGEaA
	HXwNWIKx1oEnxulpRBt6pdisfT80bSE3NHjQeJryQpli82GqrqUATYg9UivOdUj0QM/VBDlK+peOU
	qDy2Znvg+0yJW0braU+TTOVUvgMjqlHQFMAxWtIxiP1aIa4MXvNQtjYzIYoHyvulioWAjNz4qX4TN
	7gjm3SQGUvptLw936xL/Yz/w2U6yY1L6X7FJmpKESHmxAiCo+ZMGwMMP5qCg3ge6Oa0G7vowdyS8l
	JpWOaaS52dbaaqHGXBtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhM1-00000007SCi-0F6k;
	Sat, 22 Feb 2025 04:43:05 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhKX-00000007S2G-3acL;
	Sat, 22 Feb 2025 04:41:35 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 68E9E8A1124;
	Fri, 21 Feb 2025 20:36:32 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 51591160036F; Fri, 21 Feb 2025 20:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740198992;
	bh=KYidVVPbXZ8EndCbxcLt4iY9PCBO9quW0Sn8Sh3yyAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jDZVCFsYVj0up9ILlSts8dv0EmlHIke6IPWh9AU7WtWN97dKRCnY0UuOswdkseXF1
	 Rxcm9Ut1PzwfY91SV6uIMyz/A9KlL1KrBVB7gx98C3aSyvzbTt8UaqmhUTiESVnLtO
	 /uGlavYX82YGNuYAmENU5Vx7M0uY9Ik+in9B1wPM=
Date: Fri, 21 Feb 2025 20:36:32 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222043632.GU16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_204134_021494_BC7D00EA 
X-CRM114-Status: UNSURE (   9.87  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUsIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3
cm90ZToKPiBPbiBGcmksIEZlYiAyMSwgMjAyNSBhdCA1OjEz4oCvUE0gSm9oYW5uZXMgRXJkZmVs
dCA8am9oYW5uZXNAZXJkZmVsdC5jb20+IHdyb3RlOgo+ID4gSSdsbCBhbHNvIHNlZSBpZiBJIGNh
biBnaXZlIEhETUkgYSB0ZXN0Lgo+Cj4gUGxlYXNlIHJlcG9ydCB5b3VyIHJlc3VsdHMgd2hlbiB5
b3UgZG8uIFRoaXMgaXMgb25lIG9mIHRoZSBkaWZmZXJlbmNlcwo+IGZyb20gdGhlIE9yYW5nZSBQ
aSA1IE1heC4gVGhlIEhETUkxIHBpbmN0cmxzIGRvZXMgbm90IHVzZSB0aGUgZGVmYXVsdAo+IHBp
bmN0cmxzIGxpa2Ugb3RoZXIgUkszNTg4IGJvYXJkcyAoaW5jbHVkaW5nIHRoZSBPcmFuZ2UgUGkg
NSBQbHVzKS4KCk5vIGx1Y2sgeWV0LiBJIGRvIHNlZSB0aGlzIG1lc3NhZ2UgaW4gdGhlIGtlcm5l
bCBsb2dzIDggdGltZXMgYXQgYm9vdDoKClsgICA0MS41NTI3NTFdIHJvY2tjaGlwLWRybSBkaXNw
bGF5LXN1YnN5c3RlbTogW2RybV0gKkVSUk9SKiBmYWlsZWQgdG8KZ2V0IHBsbF9oZG1pcGh5MAoK
SSdsbCBjb25maXJtIHdpdGggdGhlIHZlbmRvciBpbWFnZSB0aGF0IG15IEhETUkgc2V0dXAgaXMg
Y29ycmVjdC4KCkpFCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
