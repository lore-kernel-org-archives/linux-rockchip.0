Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5439C48BCD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:18:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FF3A611BD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:18:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FF3A611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHvJHK2E/Y8x7YpRLQLkQj5trS7CmKiWdlVyNYt1Uo8=; b=IhiSBjFlR11IV+
	Ikxo8n3uyIDkb/NEMAPet6ofm2qcpjetj8rPs/qGg5QWOukljgwcU0RMYAXzsUNNo/QBLWzcNJKf+
	vFDuMs07a/tHKS2BBA7mF0mbaHCL2B6gwfJqNc7eB8W+s1pkZ5mYsq+q8vJ8r/bN4po6WO8/rozsi
	E8lXkgSxmmFntQmEywOV3tFWwZoamzTzHYb+TbXNEm/+L+5Ki3T9JRdYdfK2LL1BI0wJ0hXHQ7iB9
	kz6NM5BkGXniEr1Qs6CQtOe+2p1HRuhX+5POw7+jvSLYGmkYSUWZ1Wuix725PGGjz/aht1tMtoDjH
	EA7gjI+PiJnmOESdl1BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqF9Z-003kJs-UF; Mon, 07 Jun 2021 13:18:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqF7v-003jsN-Pa; Mon, 07 Jun 2021 13:17:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CFBDA61185;
 Mon,  7 Jun 2021 13:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623071830;
 bh=SGYTD9jGwwVnbXxZJo2IMmz6s1Wuu6sgPJY01wB0hj8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dPCoPQPpVQTmPC46OSxK1YTNM4Rp6aENDRN4jpV6sOt92dlgCTNDtvdIKKhAOh//3
 7SrSB3TObM5qhZbsm4W8IHxTQFzgHQhiMyQMLjPpEawn++uhYu095w3YgbX8lb8H5O
 aZRBIAlEEPPBQC7dsVKW5uR2jUOXZh9P+woU4bzxO7usIMoDV16K2DSPEP1Dl3oPNg
 aP2Mp5L2uvW2dDYx7tobV4I6XjWu+onEc6DCtfPLqcEqK1CnlOIb09/ubR5+JdSKm5
 vVCljfmvgD8uqf2fgJ/akVABNFRLJUWejC+qX13dt4XDXUXT2LgdsVp58xuwlzagOL
 KJ+GHtyCIwDWQ==
Received: by mail-ej1-f45.google.com with SMTP id h24so26660604ejy.2;
 Mon, 07 Jun 2021 06:17:10 -0700 (PDT)
X-Gm-Message-State: AOAM531pp++3+BBqWtq8DpqRWxz5EcnXjQD1/yxDyyFTWzsiUb9Tu2VG
 r5sOq5WhSryMyupulTx9sKL44uwNgoAZ1cALiA==
X-Google-Smtp-Source: ABdhPJyB2mu2p0Vz6GuEA33/JHz9vO2OJC5SpaUCqz5KbM1IIo7ajKUdT/3rQ7GMquBx8tQt0gQr02DtW31fRQgs5vQ=
X-Received: by 2002:a17:906:fa13:: with SMTP id
 lo19mr18291724ejb.468.1623071829381; 
 Mon, 07 Jun 2021 06:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210601164800.7670-1-jbx6244@gmail.com>
 <20210601164800.7670-2-jbx6244@gmail.com>
 <YLhukPL7jSx3+dBj@vkoul-mobl> <3601774.Dhsi8hcfAM@diego>
In-Reply-To: <3601774.Dhsi8hcfAM@diego>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 7 Jun 2021 08:16:58 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+xE7UfXcr-RTkxB8gZej8M52Fk-yM3yYA3KA7mMn50ng@mail.gmail.com>
Message-ID: <CAL_Jsq+xE7UfXcr-RTkxB8gZej8M52Fk-yM3yYA3KA7mMn50ng@mail.gmail.com>
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Tobias Schramm <t.schramm@manjaro.org>, linux-phy@lists.infradead.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_061711_925429_ED86619D 
X-CRM114-Status: GOOD (  14.85  )
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

T24gVGh1LCBKdW4gMywgMjAyMSBhdCAzOjU4IEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gSGkgVmlub2QsCj4KPiBBbSBEb25uZXJzdGFnLCAzLiBKdW5pIDIw
MjEsIDA3OjU0OjI0IENFU1Qgc2NocmllYiBWaW5vZCBLb3VsOgo+ID4gT24gMDEtMDYtMjEsIDE4
OjQ3LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4gPiA+IFRoZSBwYXR0ZXJuOiAiXih8dXNiLXx1c2Iy
LXx1c2IzLXxwY2ktfHBjaWUtfHNhdGEtKXBoeShAWzAtOWEtZixdKykqJCIKPiA+ID4gaW4gcGh5
LXByb3ZpZGVyLnlhbWwgaGFzIHJlcXVpcmVkICIjcGh5LWNlbGxzIiBmb3IgcGh5IG5vZGVzLgo+
ID4gPiBUaGUgInBoeS1jZWxscyIgaW4gcm9ja2NoaXAtaW5uby11c2IyIG5vZGVzIGFyZSBsb2Nh
dGVkIGluIHN1Ym5vZGVzLgo+ID4gPiBSZW5hbWUgdGhlIG5vZGVuYW1lIHRvIHBhdHRlcm4gInVz
YjJwaHlAWzAtOWEtZl0rJCIgdG8gcHJldmVudAo+ID4gPiBub3RpZmljYXRpb25zLiBSZW1vdmUg
dW5uZWVkZWQgIiNwaHktY2VsbHMiIGZyb20gcGFyZW50IG5vZGUuCj4gPiA+IEFsc28gc29ydCBl
eGFtcGxlLgo+ID4gPgo+ID4gPiBtYWtlIEFSQ0g9YXJtIGR0YnNfY2hlY2sKPiA+ID4gRFRfU0NI
RU1BX0ZJTEVTPX4vLmxvY2FsL2xpYi9weXRob24zLjUvc2l0ZS1wYWNrYWdlcy9kdHNjaGVtYS9z
Y2hlbWFzLwo+ID4gPiBwaHkvcGh5LXByb3ZpZGVyLnlhbWwKPiA+ID4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPiA+ID4gQWNrZWQtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIueWFtbCAgICAgICB8IDExICsr
Ky0tLS0tLS0tCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3Jv
Y2tjaGlwL2dyZi55YW1sICAgICAgIHwgIDQgKystLQo+ID4KPiA+IEkgZG9udCBoYXZlIGdyZi55
YW1sLCBJIGd1ZXNzIGl0IHdvdWxkIGJlIGVhc2llciB0byBzcGxpdCB0aGlzIGludG8gdHdvCj4g
PiBvciBhcHBseSB0aGlzIHRocnUgcm9ja2NoaXAgdHJlZS4gSWYgeW91IHByZWZlciBsYXR0ZXI6
Cj4gPgo+ID4gQWNrZWQtQnk6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4KPiBiZWZv
cmUgd2UgZG8gYW55IG1vcmUgcm91bmRzLCBJJ2xsIGp1c3QgZG8gdGhhdCB3aXRoIHlvdXIgQWNr
LCB0aGFua3MgOi0pCgpUaGlzIGlzIGdlbmVyYXRpbmcgd2FybmluZ3Mgb24gbGludXgtbmV4dCBu
b3c6CgovYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYuZXhhbXBsZS5kdC55YW1sOgpzeXNjb25AZmY3NzAw
MDA6IHVzYjJwaHlAZTQ1MDogJyNwaHktY2VsbHMnIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUK
cmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwpGcm9tIHNjaGVtYTogL2J1aWxkcy9yb2JoZXJyaW5n
L2xpbnV4LWR0L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAv
Z3JmLnlhbWwKL2J1aWxkcy9yb2JoZXJyaW5nL2xpbnV4LWR0L0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLmV4YW1wbGUuZHQueWFtbDoKdXNiMnBoeUBl
NDUwOiAnI3BoeS1jZWxscycgZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOgoncGlu
Y3RybC1bMC05XSsnCkZyb20gc2NoZW1hOiAvYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtaW5uby11c2Iy
LnlhbWwKClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
