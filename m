Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6877AECAAD2
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 00:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4V5dYc8roqI5SvCzvGpGiI2VZotvJxXuL36hE3S/qg0=; b=NG/TtbYlv5mPnM
	s42scCOR15a4dZD5FWVmMVM5S1Zzbwe42Ek8VhF+vr8KrOuPzLW//kF93huTXcWJ8ZSwFHTqgwtcP
	jtm3WdCv2WjsU/Zd7tNR1Om9NybEmq117R3v1d71rDwofBsUV7uO44Rs9IKuTdFZAsoXrP47D9GIP
	2QWN1Jy0JTN8s5GiMduQAgYy4p89oFJMyiJS4+iEtxJWTThFfGNXqr1A6JCfoaRuhJ2p/u9y3sjGQ
	jyCX8b1FJd2JB3lMgswh0EjvNyDLvvXKKvdE77rl2MDoOpEvUClgey+aZ745kfLi46t1I/J+FxxZs
	3nJ4wJGbruZEvfuDjbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTurp-00GHzO-OH; Fri, 02 Sep 2022 00:49:05 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTurm-00GHwf-4r
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 00:49:04 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id AE2CB9004A0;
	Fri,  2 Sep 2022 08:48:54 +0800 (CST)
Date: Fri, 2 Sep 2022 08:48:54 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: robh+dt <robh+dt@kernel.org>
Cc: linus.walleij <linus.walleij@linaro.org>, 
	=?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add clock-names
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>, 
	<20220901012944.2634398-2-jay.xu@rock-chips.com>, 
	<CAL_JsqJ+i873aVYwNuiDeXsyOgzE_E7XG1QMCEeuMHKdoZjwTQ@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022090208485453829938@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZS0xIVh9DTU4ZSEwaGU5DHVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktDSEhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Nhw6CT00HUNMTywKIwNW
	GQgwFBxVSlVKTU1JS0xCTEhOSUpNVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlNQ0k3Bg++
X-HM-Tid: 0a82fbac144f2eafkusnae2cb9004a0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_174902_337926_6CB846EA 
X-CRM114-Status: UNSURE (   7.51  )
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

SGkgUm9iCgotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPk9uIFdlZCwgQXVn
IDMxLCAyMDIyIGF0IDg6MzYgUE0gSmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPiB3
cm90ZToKPj4KPj4gQWRkICdjbG9jay1uYW1lcycgdG8gdGhlIGdwaW8gZHQgbm9kZS4gc28gdGhl
IGRyaXZlciBjb3VsZCBnZXQgY2xvY2tzIGJ5Cj4+IGEgY29uc3QgY2hhciBpZCwgdGhpcyBwYXRj
aCBuYW1lcyB0aGUgY2xvY2stbmFtZXMgYXMKPj7CoMKgIC0gJ2J1cyc6IHRoZSBhcGIgY2xvY2sg
Zm9yIGNwdSB0byBhY2Nlc3MgdGhlIGdwaW8gY29udHJvbGxlcgo+PsKgwqAgLSAnZGInOiB0aGUg
ZGVib3VuY2UgY2xvY2sgZm9yIGNwdSB0byBzZXQgZGVib3VuY2UgY2xvY2sgcmF0ZQo+Pgo+PiBT
aW5jZSB0aGUgb2xkIGR0IG5vZGVzIG1heSBoYXZlIG5vIGNsb2NrLW5hbWVzLCB0aGlzIHBhdGNo
IG5vdCBtYWtlIHRoZW0KPj4gYXMgcGFydCBvZiAncmVxdWlyZWQgcHJvcGVydGllcycuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IEppYW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNvbT4KPj4gLS0t
Cj4+wqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFt
bMKgwqDCoMKgwqDCoMKgIHwgNiArKysrKysKPj7CoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCj4KPlBsZWFzZSByZXNlbmQgRFQgcGF0Y2hlcyB0byB0aGUgRFQgbGlzdCwgc28gdGhl
eSBhcmUgdGVzdGVkIGFuZCByZXZpZXdlZC4KPiAKR290IGl0LCB0aGFua3MKCj5Sb2IKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
