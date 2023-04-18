Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB872C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXUzInSGfilfVG4LzqNLr436hO3YVwwEbz1YNF0xn+o=; b=f68ynLeL65163a
	ISIo+w70T5Bb2ZVAsvI2kk9TsxnGLTwwY7q+Zg3sL5BIr7oyokKCdAc3mYYwaSyT6obgKV3QqbRmf
	rDwaoO7gea7Zgk+kNIxCjszF85a99KDdQ1AXEQ7noYqm9kxHAWWw0AsTPkUzHEhqAmw8dG3+mnubk
	DJOMyRDwM2wf7MfYpmOn6+Ce5GE9D3HoQHUO4cfDS4UXOftG+KwBuClabyhWAsCgZEUsp63z2FEmS
	4+DC8k8H8P+8c4p0S2d+RuSBrJgfQ7prIAsIZ1GbJPlym5Ak/VuT5A49zXmC4+pHtOKy7bCRHQhLj
	NGaOXltsGeWoqYAusP5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poifN-001iWE-1s;
	Tue, 18 Apr 2023 10:34:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poifI-001iNM-1T;
	Tue, 18 Apr 2023 10:34:26 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8187E6603209;
	Tue, 18 Apr 2023 11:34:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681814058;
	bh=g3ZoOiOIzuzWSrTVc/rLTnS4Nz5d5QQ3aAFUIpYfhps=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bOAO2HCmwNOfic8bCkFEl0rpiQN0kTxdIzLjF2IK9P3Wc7wKdPl4+wzwLKnMnAQO/
	 L6uLvqNXayr7YQ55nX+C84s0xli1XFJB3GqbPqNmV0VoFcIwDY0hvT/SfJFtOOR6uq
	 N5HVfxVOU6fOmV94IL93moNIs+R3EsMTSLsW9SoYgyAx4Z35rZTlOQeOIpW5tJG4/q
	 xtm+JBn+jYz5yA7YhzdlgvTxycL+m8OfVxJsx5y5BeEeQKiZWAaOWatfqMWElYjYIl
	 EptK4nf50bbdO+YfVwREbta0YtguLFOYUOe/Wu2Pn1P5uN7xLto9keHvdnWas8TMCn
	 wpLI8FbqkoHgg==
Message-ID: <c2fe7e09-024c-b3f7-c7a6-0c2981cb3ba3@collabora.com>
Date: Tue, 18 Apr 2023 13:34:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/3] dt-bindings: timer: rockchip: Drop superfluous rk3288
 compatible
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
 <20230418095344.274025-2-cristian.ciocaltea@collabora.com>
 <2436573.fIoEIV5pvu@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2436573.fIoEIV5pvu@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_033424_717426_31A5BE0B 
X-CRM114-Status: GOOD (  11.28  )
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

T24gNC8xOC8yMyAxMzoyNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcsIDE4
LiBBcHJpbCAyMDIzLCAxMTo1Mzo0MiBDRVNUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+
PiBUaGUgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFJvY2tjaGlwIFJLMzI4OCBpcyBwcm92aWRlZCBp
biBib3RoIHRoZSAnZW51bScKPj4gYW5kIHRoZSBzdWJzZXF1ZW50ICdjb25zdCcgaXRlbS4gRHJv
cCB0aGUgdW5uZWNlc3NhcnkgZW50cnkgZnJvbSB0aGUKPj4gZW51bS4KPiAKPiBBbmQgdGhlIGFj
dHVhbCByazMyODgtdGltZXIgY2FzZSBpcyBoYW5kbGVkIGluIHRoZSBzZXBhcmF0ZQo+IAktIGNv
bnN0OiByb2NrY2hpcCxyazMyODgtdGltZXIKPiBhdCB0aGUgdG9wIG9mIHRoZSBsaXN0IHRvby4K
ClJpZ2h0LCBpbiB0b3RhbCB0aGVyZSB3ZXJlIDMgb2NjdXJyZW5jZXMgb2YgdGhpcyBjb21wYXRp
YmxlIHN0cmluZy4KCj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3Rp
YW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gCgpUaGFua3MgZm9yIHRoZSBxdWljayByZXZpZXchCgpS
ZWdhcmRzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
