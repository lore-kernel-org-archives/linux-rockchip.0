Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA20C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 10:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9Iknc77c0hmO5404p5de2aNtvbPEEPd5Zo4NwjdEQM=; b=GALWw7o8au/khl
	huBArDXPCxxXVKtWjmbi3UYrHKv8KEj4XSQASUu4vIp4OmxRB10xxBLxpJ6T+vINOnulMTZNnLKDg
	hNqGiKcXYhSIfEsEu8KN3qI130wvOgk7v2m0QfCiJMTAgW9fuMQPaQ1BO32jGLqP4gfqOkcyeNO5o
	mNZozm7HxPoQkXNb2K5DK63OjEXZqbfCo2jJMdgpxw1x/WNh47DlAEE71pcrDhb5S/y94pFtT6YFB
	UezlnfQ9hLNLqeNdGaZDvtBcg7P4+aX8ccQUKwOFjq7fhqhG2K3GTeRDo+izV6Km3RVnxMv2fSgZt
	kkIIuO2g1xzlU3JFgq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQRKl-00D6R1-CG; Sat, 05 Mar 2022 10:08:19 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQRKh-00D6QF-J5; Sat, 05 Mar 2022 10:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646474868;
 bh=YJqn1NC2PcONovl+FeGlrbZLfeART2llhJv+aFruqL8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=R4D82yx17Ur9XFddyt1BtT8rQBFwwHNMEkM2Y9Uftfb3Jtx7H7JMo92zGASLZqeW7
 hMKfVRnjVoTa5o1XQpab6J4m2CCZ37A2s+vClm/7Zw8KfRz2Q3Q9QsvZy7BPZcmMVe
 +jHMjTYalA0KxDWHnD0svKkQ3mScBfs8jlEA+tEE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.220] ([80.245.79.220]) by web-mail.gmx.net
 (3c-app-gmx-bap19.server.lan [172.19.172.89]) (via HTTP); Sat, 5 Mar 2022
 11:07:48 +0100
MIME-Version: 1.0
Message-ID: <trinity-68e1ed73-5a31-42d1-838e-0a837e686c4a-1646474868401@3c-app-gmx-bap19>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, "open list:LIBATA SUBSYSTEM (Serial and
 Parallel ATA drivers)" <linux-ide@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Ray Jui <rjui@broadcom.com>, Scott
 Branden <sbranden@broadcom.com>, "maintainer:BROADCOM BCM7XXX ARM
 ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>
Subject: Aw: Re: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Date: Sat, 5 Mar 2022 11:07:48 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAL_JsqJMZ1mZ91SYZR03rMkK-ZqFd-tCwV6zOrNu5NmP6V+duA@mail.gmail.com>
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
 <Yh+0B+iKx1gJXXCk@robh.at.kernel.org>
 <trinity-1ca1f3fd-1eeb-4c8d-a7e2-65851eb8002b-1646291055736@3c-app-gmx-bs69>
 <CAL_JsqJMZ1mZ91SYZR03rMkK-ZqFd-tCwV6zOrNu5NmP6V+duA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:/P0vzO+iE3b5I3dbtGgMwtxR9U6OKwczttbAGfwTXkfKWsHrYxxTETEAvFpR6TjrKXlHj
 CbsxUsZvI7LPDJbP5Y62qRUxeM+tT+vL0+BSNLGg3EybiyTLZbjIykCpxvz+Rwnuz2E1yiPspb0j
 t1qM/Cr8NFDw7DJaII5b0gvdZfJpCFNOvCvoJaNqbBKauKdhu5HZOwKwNRe9m2SjU1Y2s8XoKvh/
 vDvOSsM9zY/kHDK0CVOr7/tq8QaQd+1K7Qv5BSaZB6ROwZhCYgXwmYENMCrMzi+y7pRYmJtb0g8E
 c8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:xhCga6P51Tk=:BhJdX6j65ejZ9fVOAYZOhq
 hN1UYc10YfWYB62IOfbzb/+zGB1PgJ0rofHpQiRaNchSj6/6hdji2p7hD1KnL/zXdNw5+yXYJ
 KdY8nzqsURgJo6MEt81IT3U+tkdjix62yn8Vxsm9WlyKYPb00Pl27IOlQS/sb15AX4CDj4hJp
 v2/sKOk9AOxQZOfHKi9vxOAsE3/MDq6J/x/nvi4o9xVnaq9RgoNMljKr5zxHXhwu9R95MwTiY
 UzEYI4EvolulY/GtOV8nMMD1eSPEYIU7gK98vTcvbprwuBi4XzQsDirtj8LztSJGV9DzJ1Ock
 5eXjtECIz1zVmirc/BCoxY8q1PQzeZZmHG+xV4ps0Y2IvnzKYn/yxcsLzy1CueZ3FDk4csnv1
 MYGicJaSddUg4g6ePiPsH9VW1tD5O6UkCjsodAaxiG5NTFtOUnP+JQWqs4wymQNUwjclUkpBa
 r2bYyxVA32aZhW0un+F+2sHugUsiNRaXJb/fNzTju0Q+TiAp/grYvcSsruPoByfh2ZdDzGTYx
 aC3BikVbtgJhBkyA1MpOFy/VBrOfzzCC/8K56k+oBBMYx0UkmUSyzFdjftONRSKXxSrZJ3SmY
 VCKqi4Bik8pxvpnHktviqaP/SHMYbnLLwo8KSWROLJtIchrY0w+wLaxV0wURJKPamozPxIGYI
 74sgQFbMVOt3THPMA+WPQe32icT/X8u1WPSgRkdleA4DdegTmDUTK9uNDQj4lECR6flWJD2cl
 6BxG0b0Fh+6GuBU+SW+EH8FXXzmzkjFYmQVBMVoJnIvGMbhA81Y2X0paMDYQonqbOAjidUJch
 XugSAYi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_020816_015723_E48636FE 
X-CRM114-Status: GOOD (  14.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkKCj4gR2VzZW5kZXQ6IFNhbXN0YWcsIDA1LiBNw6RyeiAyMDIyIHVtIDAwOjM3IFVocgo+IFZv
bjogIlJvYiBIZXJyaW5nIiA8cm9iaEBrZXJuZWwub3JnPgoKPiA+ID4gPiArICBwb3J0cy1pbXBs
ZW1lbnRlZDoKPiA+ID4gPiArICAgICRyZWY6ICcvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0
aW9ucy91aW50MzInCj4gPiA+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ID4gPiArICAgICAgTWFz
ayB0aGF0IGluZGljYXRlcyB3aGljaCBwb3J0cyB0aGF0IHRoZSBIQkEgc3VwcG9ydHMKPiA+ID4g
PiArICAgICAgYXJlIGF2YWlsYWJsZSBmb3Igc29mdHdhcmUgdG8gdXNlLiBVc2VmdWwgaWYgUE9S
VFNfSU1QTAo+ID4gPiA+ICsgICAgICBpcyBub3QgcHJvZ3JhbW1lZCBieSB0aGUgQklPUywgd2hp
Y2ggaXMgdHJ1ZSB3aXRoCj4gPiA+ID4gKyAgICAgIHNvbWUgZW1iZWRkZWQgU29Dcy4KPiA+ID4g
PiArICAgIG1heEl0ZW1zOiAxCj4gPiA+Cj4gPiA+IEEgdWludDMyIGlzIG9ubHkgZXZlciAxIGl0
ZW0uIERyb3AuCj4gPiA+Cj4gPiA+IElJUkMsIGlzbid0IHRoZSBtYXggaGVyZSAweGZmPyBBZGQg
Y29uc3RyYWludHMuCj4gPgo+ID4gaSd2ZSBmb3VuZCBpdCBvbmx5IHNldCB0byAweDEgc28gaSBo
YXZlIGN1cnJlbnRseSBzZXQgdGhlIG1heGltdW0gdG8gMHgxLCBpcyB0aGlzIG9rPwo+ID4gSWYg
c29tZSBoaWdoZXIgdmFsdWUgaXMgbmVlZGVkIGJpbmRpbmcgbmVlZHMgdG8gYmUgdG91Y2hlZC4u
Lgo+IAo+IFRoZXJlJ3MgYSBzcGVjIGZvciBpdCwgc28gbm8gbmVlZCB0byBsb29rIGF0IHdoYXQn
cyB1c2VkLiBDYWx4ZWRhIEFIQ0kKPiBoYWQgNSBwb3J0cyBJSVJDLgoKYXMgZmFyIGFzIGkgdW5k
ZXJzdGFuZCBjb2RlIGluIGxpYmFoY2kuYyBsaW5lIDUzNSsgWzFdCmkgZ3Vlc3MgaSBuZWVkIHRv
IHNldCBsb3dlciA1IGJpdHMgdG8gMSBmb3IgNSBwb3J0cywgcmlnaHQ/IHJlc3VsdGluZyBpbiBt
YXggdmFsdWUgMHgxZgoKPiA+IG5vdyBpIGhhdmUgb25seSB0aGUgbWFydmVsbC1lcnJvcnMgYWJv
dXQgaW5jb21wbGV0ZSBzYXRhLXBvcnQgc3Vibm9kZSAod2l0aG91dCBwaHkvdGFyZ2V0LXN1cHBs
eSkgbGlrZSBpIG1lbnRpb24gaW4gdGhlIHBhdGNoLi4uaG93IHRvIHByb2NlZWQgd2l0aCB0aGlz
Pwo+IAo+IFNvIHRoZSBjaGlsZCBub2RlcyBhcmUgaW5jb21wbGV0ZT8gVGhleSBzaG91bGQgYmUg
ZGlzYWJsZWQgdGhlbgo+IChzdGF0dXMgPSAiZGlzYWJsZWQiKSBhbmQgdGhhdCB0dXJucyBvZmYg
cmVxdWlyZWQgcHJvcGVydGllcyBjaGVja3MuCgp0aGFua3MsIGhhdmUgZGlzYWJsZSB0aGUgbm9k
ZXMgYW5kIHJlZW5hYmxlIHRoZW0gd2hlcmUgcGh5cy90YXJnZXQtc3VwcGx5IHdhcyBhZGRlZCBb
Ml0uLi4KCm5vdyB0aGUgZHRic19jaGVjayBpcyBjbGVhbgoKWzFdIGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y1LjE3LXJjNi9zb3VyY2UvZHJpdmVycy9hdGEvbGliYWhjaS5jI0w1
MzUKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9mcmFuay13L0JQSS1SMi00LjE0L2NvbW1pdHMvNS4x
Ny1uZXh0LTIwMjIwMjI1CgpyZWdhcmRzIEZyYW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
