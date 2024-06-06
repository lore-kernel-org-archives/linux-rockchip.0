Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 171A0C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9oTbe3qzZH8tdQJvJzmuAYPsB931boHmNcNfX+vMT4=; b=Y+Wh9pta9kE761
	524suSbgHdrJgT8ZJG+HdgrsdKz+CTJ/cQtSc001tRZxRCvM14q/FZKFjBCTx3epGpNfpm+w8MyZ0
	1GGpgiJq9hQZLWeSgeuRCWqfmCzo5qqdxUpEjHwD+cPRK7WwXNccWLG25qfkj6OMmklktVuZ5fgbp
	y+ULHTQtDIlZ9Oa2LEajz9Zwme0obsoihvwM6IBMLa/6hl7i/H0Z5x3mKEk3CCmBTJw69hnOZdbUV
	nzfDh28AkRVu2fDReov6TyC9UnZz89XJHCL6O2tl5TUTdHkM8OQDFYVxjs1yX44ZZKJ+dpn1q9Bvk
	LY0El6DzzmDhBAXn8N6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEZT-0000000AAnZ-1Zmr;
	Thu, 06 Jun 2024 14:58:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEZP-0000000AAmB-2QQ1;
	Thu, 06 Jun 2024 14:58:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BC76DCE1BAD;
	Thu,  6 Jun 2024 14:58:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7942C4AF08;
	Thu,  6 Jun 2024 14:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717685904;
	bh=+5bxvf0v2FVyUXIrKPcUNq52cRGrHBpwGeGDJnmbnJ0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jwwb5eD+l+DurInLJxKAXBTR2YMVm4VmopGfGFizR8mXdCKqiPdfloiAOFmPMus8k
	 8G+lVTgL3sV8BQ1N0apW5QU+JMAroRFG33TofmE27PH5wwHeFn4RTmmmGS9jmMDjgW
	 tKLEhVjCV8SuaejQpW9PTq8z4Sqy1x/ID0SHddsXb+TK51bgTj95W5s2I0AQObthSr
	 VAEHKlbwd1B9XbToSFFdk0uWHGvibpOcOPRIZ9ApWAgfG9m2IIrAliyXar18usnfUl
	 TEtZDxJI5RnDH+K5pIW3OotMauefv4GAsJ0kEDGt/RFyVLMtI78DGi1Y5H8/MznmgF
	 AmPA4Cec7BEzw==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5295eb47b48so1355470e87.1;
        Thu, 06 Jun 2024 07:58:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXcIFXTNxzB4YKfCmyfj8SFk0hxu2s+7eF/Ne8tRudPpEk7To6svcZaemlzrSw4UQFkupMWKQQCQM+xUsDQfbTBjRRrDiAx5+TZXUpFLW8tWWUZrsnyu0QdWaDehLhPr3HEu9EQO6kKu4BagVxeCknCHChJe/OUScc=
X-Gm-Message-State: AOJu0YypJv6J94mYgBj3W/FO3MQG58g3oNU3EWyotKJxbsW9NDiJ9d3O
	x2/O8DRE80jTIjO66tQ1OC9YWoFWsyM2crLsmIfBhbF06lbClrgW8olKnsb3oW5o9hZtdVZOVst
	LVXlHQ29xfqV++lFk26FB59wKmQ==
X-Google-Smtp-Source: AGHT+IEI/HzrYwCNH+fgv5QUK3X6q1WLoehrFnvaSYS+6bZQTY8kCtZZFy9elFAgM+jtrBoVoTj5yw4L49fT/gXDhws=
X-Received: by 2002:ac2:42cd:0:b0:52b:9c8a:7356 with SMTP id
 2adb3069b0e04-52bab4fb431mr3412448e87.49.1717685903060; Thu, 06 Jun 2024
 07:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-12-f6203753232b@collabora.com>
 <20240605232206.GA3345910-robh@kernel.org> <260aa607-099a-4f65-ae59-c4b6ea2256f1@collabora.com>
In-Reply-To: <260aa607-099a-4f65-ae59-c4b6ea2256f1@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 6 Jun 2024 08:58:09 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKsVE1VgoYGe7qPaAV82dbs5UMGPG843mz26Opv0Y7Hxg@mail.gmail.com>
Message-ID: <CAL_JsqKsVE1VgoYGe7qPaAV82dbs5UMGPG843mz26Opv0Y7Hxg@mail.gmail.com>
Subject: Re: [PATCH 12/14] dt-bindings: display: rockchip,dw-hdmi: Add
 compatible for RK3588
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kernel@collabora.com, 
	Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_075827_997388_A444BEEA 
X-CRM114-Status: GOOD (  23.10  )
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

T24gVGh1LCBKdW4gNiwgMjAyNCBhdCA1OjUx4oCvQU0gQ3Jpc3RpYW4gQ2lvY2FsdGVhCjxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBPbiA2LzYvMjQgMjoyMiBB
TSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBTYXQsIEp1biAwMSwgMjAyNCBhdCAwNDoxMjoz
NFBNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4gPj4gRG9jdW1lbnQgdGhlIFN5
bm9wc3lzIERlc2lnbldhcmUgSERNSSAyLjEgUXVhZC1QaXhlbCAoUVApIFRYIGNvbnRyb2xsZXIK
PiA+PiBmb3VuZCBvbiBSb2NrY2hpcCBSSzM1ODggU29DIGZhbWlseS4KPiA+Pgo+ID4+IFNpbmNl
IFJLMzU4OCB1c2VzIGRpZmZlcmVudCBjbG9ja3MgdGhhbiBwcmV2aW91cyBSb2NrY2hpcCBTb0Nz
IGFuZCBhbHNvCj4gPj4gcmVxdWlyZXMgYSBjb3VwbGUgb2YgcmVzZXQgbGluZXMgYW5kIHNvbWUg
YWRkaXRpb25hbCBwcm9wZXJ0aWVzLCBwcm92aWRlCj4gPj4gdGhlIHJlcXVpcmVkIGNoYW5nZXMg
aW4gdGhlIGJpbmRpbmcgdG8gYWNjb21tb2RhdGUgYWxsIHZhcmlhbnRzLgo+ID4+Cj4gPj4gU2ln
bmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFi
b3JhLmNvbT4KPiA+PiAtLS0KPiA+PiAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsZHct
aGRtaS55YW1sICAgICAgICAgfCAxMjcgKysrKysrKysrKysrKysrLS0tLS0tCj4gPj4gIDEgZmls
ZSBjaGFuZ2VkLCA5MCBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2Nr
Y2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwKPiA+PiBpbmRleCAy
YWFjNjIyMTlmZjYuLjYwZDZiODE1MjI3ZiAxMDA2NDQKPiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlh
bWwKPiA+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9y
b2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwKPiA+PiBAQCAtMTAsMTIgKzEwLDEwIEBAIG1h
aW50YWluZXJzOgo+ID4+ICAgIC0gTWFyayBZYW8gPG1hcmt5YW8wNTkxQGdtYWlsLmNvbT4KPiA+
Pgo+ID4+ICBkZXNjcmlwdGlvbjogfAo+ID4+IC0gIFRoZSBIRE1JIHRyYW5zbWl0dGVyIGlzIGEg
U3lub3BzeXMgRGVzaWduV2FyZSBIRE1JIDEuNCBUWCBjb250cm9sbGVyIElQCj4gPj4gLSAgd2l0
aCBhIGNvbXBhbmlvbiBQSFkgSVAuCj4gPj4gLQo+ID4+IC1hbGxPZjoKPiA+PiAtICAtICRyZWY6
IC4uL2JyaWRnZS9zeW5vcHN5cyxkdy1oZG1pLnlhbWwjCj4gPj4gLSAgLSAkcmVmOiAvc2NoZW1h
cy9zb3VuZC9kYWktY29tbW9uLnlhbWwjCj4gPj4gKyAgRm9yIFNvQ3MgdXAgdG8gUkszNTY4LCB0
aGUgSERNSSB0cmFuc21pdHRlciBpcyBhIFN5bm9wc3lzIERlc2lnbldhcmUKPiA+PiArICBIRE1J
IDEuNCBUWCBjb250cm9sbGVyIElQIHdpdGggYSBjb21wYW5pb24gUEhZIElQLgo+ID4+ICsgIFRo
ZSBSSzM1ODggU29DIGludGVncmF0ZXMgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgSERNSSAyLjEg
UXVhZC1QaXhlbCAoUVApCj4gPj4gKyAgVFggY29udHJvbGxlciBJUCBhbmQgYSBIRE1JL2VEUCBU
WCBDb21ibyBQSFkgYmFzZWQgb24gYSBTYW1zdW5nIElQIGJsb2NrLgo+ID4+Cj4gPj4gIHByb3Bl
cnRpZXM6Cj4gPj4gICAgY29tcGF0aWJsZToKPiA+PiBAQCAtMjUsNiArMjMsNyBAQCBwcm9wZXJ0
aWVzOgo+ID4+ICAgICAgICAtIHJvY2tjaGlwLHJrMzMyOC1kdy1oZG1pCj4gPj4gICAgICAgIC0g
cm9ja2NoaXAscmszMzk5LWR3LWhkbWkKPiA+PiAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtZHct
aGRtaQo+ID4+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1kdy1oZG1pCj4gPj4KPiA+PiAgICBy
ZWctaW8td2lkdGg6Cj4gPj4gICAgICBjb25zdDogNAo+ID4+IEBAIC00MCwzNiArMzksNiBAQCBw
cm9wZXJ0aWVzOgo+ID4+ICAgICAgICBBIDEuOFYgc3VwcGx5IHRoYXQgcG93ZXJzIHVwIHRoZSBT
b0MgaW50ZXJuYWwgY2lyY3VpdHJ5LiBUaGUgcGluIG5hbWUgb24gdGhlCj4gPj4gICAgICAgIFNv
QyB1c3VhbGx5IGlzIEhETUlfVFhfQVZERF8xVjguCj4gPj4KPiA+PiAtICBjbG9ja3M6Cj4gPj4g
LSAgICBtaW5JdGVtczogMgo+ID4+IC0gICAgaXRlbXM6Cj4gPj4gLSAgICAgIC0ge30KPiA+PiAt
ICAgICAgLSB7fQo+ID4+IC0gICAgICAjIFRoZSBuZXh0IHRocmVlIGNsb2NrcyBhcmUgYWxsIG9w
dGlvbmFsLCBidXQgc2hhbGwgYmUgc3BlY2lmaWVkIGluIHRoaXMKPiA+PiAtICAgICAgIyBvcmRl
ciB3aGVuIHByZXNlbnQuCj4gPj4gLSAgICAgIC0gZGVzY3JpcHRpb246IFRoZSBIRE1JIENFQyBj
b250cm9sbGVyIG1haW4gY2xvY2sKPiA+PiAtICAgICAgLSBkZXNjcmlwdGlvbjogUG93ZXIgZm9y
IEdSRiBJTwo+ID4+IC0gICAgICAtIGRlc2NyaXB0aW9uOiBFeHRlcm5hbCBjbG9jayBmb3Igc29t
ZSBIRE1JIFBIWSAob2xkIGNsb2NrIG5hbWUsIGRlcHJlY2F0ZWQpCj4gPj4gLSAgICAgIC0gZGVz
Y3JpcHRpb246IEV4dGVybmFsIGNsb2NrIGZvciBzb21lIEhETUkgUEhZIChuZXcgbmFtZSkKPiA+
PiAtCj4gPj4gLSAgY2xvY2stbmFtZXM6Cj4gPj4gLSAgICBtaW5JdGVtczogMgo+ID4+IC0gICAg
aXRlbXM6Cj4gPj4gLSAgICAgIC0ge30KPiA+PiAtICAgICAgLSB7fQo+ID4+IC0gICAgICAtIGVu
dW06Cj4gPj4gLSAgICAgICAgICAtIGNlYwo+ID4+IC0gICAgICAgICAgLSBncmYKPiA+PiAtICAg
ICAgICAgIC0gdnBsbAo+ID4+IC0gICAgICAgICAgLSByZWYKPiA+PiAtICAgICAgLSBlbnVtOgo+
ID4+IC0gICAgICAgICAgLSBncmYKPiA+PiAtICAgICAgICAgIC0gdnBsbAo+ID4+IC0gICAgICAg
ICAgLSByZWYKPiA+PiAtICAgICAgLSBlbnVtOgo+ID4+IC0gICAgICAgICAgLSB2cGxsCj4gPj4g
LSAgICAgICAgICAtIHJlZgo+ID4+IC0KPiA+PiAgICBkZGMtaTJjLWJ1czoKPiA+PiAgICAgICRy
ZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPiA+PiAgICAgIGRl
c2NyaXB0aW9uOgo+ID4+IEBAIC0xMzEsMTMgKzEwMCw5NyBAQCBwcm9wZXJ0aWVzOgo+ID4+ICBy
ZXF1aXJlZDoKPiA+PiAgICAtIGNvbXBhdGlibGUKPiA+PiAgICAtIHJlZwo+ID4+IC0gIC0gcmVn
LWlvLXdpZHRoCj4gPj4gICAgLSBjbG9ja3MKPiA+PiAgICAtIGNsb2NrLW5hbWVzCj4gPj4gICAg
LSBpbnRlcnJ1cHRzCj4gPj4gICAgLSBwb3J0cwo+ID4+ICAgIC0gcm9ja2NoaXAsZ3JmCj4gPj4K
PiA+PiArYWxsT2Y6Cj4gPj4gKyAgLSAkcmVmOiAvc2NoZW1hcy9zb3VuZC9kYWktY29tbW9uLnlh
bWwjCj4gPj4gKyAgLSBpZjoKPiA+PiArICAgICAgcHJvcGVydGllczoKPiA+PiArICAgICAgICBj
b21wYXRpYmxlOgo+ID4+ICsgICAgICAgICAgY29udGFpbnM6Cj4gPj4gKyAgICAgICAgICAgIGVu
dW06Cj4gPj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtZHctaGRtaQo+ID4+ICsg
ICAgdGhlbjoKPiA+PiArICAgICAgcHJvcGVydGllczoKPiA+PiArICAgICAgICByZWc6Cj4gPj4g
KyAgICAgICAgICBtYXhJdGVtczogMQo+ID4+ICsKPiA+PiArICAgICAgICBjbG9ja3M6Cj4gPj4g
KyAgICAgICAgICBtaW5JdGVtczogMQo+ID4+ICsgICAgICAgICAgaXRlbXM6Cj4gPj4gKyAgICAg
ICAgICAgIC0gZGVzY3JpcHRpb246IEFQQiBzeXN0ZW0gaW50ZXJmYWNlIGNsb2NrCj4gPj4gKyAg
ICAgICAgICAgICMgVGhlIG5leHQgY2xvY2tzIGFyZSBvcHRpb25hbCwgYnV0IHNoYWxsIGJlIHNw
ZWNpZmllZCBpbiB0aGlzCj4gPj4gKyAgICAgICAgICAgICMgb3JkZXIgd2hlbiBwcmVzZW50Lgo+
ID4+ICsgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBUTURTL0ZSTCBsaW5rIGNsb2NrCj4gPj4g
KyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEVBUkMgUlggYmlwaGFzZSBjbG9jawo+ID4+ICsg
ICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBSZWZlcmVuY2UgY2xvY2sKPiA+PiArICAgICAgICAg
ICAgLSBkZXNjcmlwdGlvbjogQXVkaW8gaW50ZXJmYWNlIGNsb2NrCj4gPj4gKyAgICAgICAgICAg
IC0gZGVzY3JpcHRpb246IFZpZGVvIGRhdGFwYXRoIGNsb2NrCj4gPj4gKwo+ID4+ICsgICAgICAg
IGNsb2NrLW5hbWVzOgo+ID4+ICsgICAgICAgICAgbWluSXRlbXM6IDEKPiA+PiArICAgICAgICAg
IGl0ZW1zOgo+ID4+ICsgICAgICAgICAgICAtIGNvbnN0OiBwY2xrCj4gPj4gKyAgICAgICAgICAg
IC0gZW51bTogW2hkcCwgZWFyYywgcmVmLCBhdWQsIGhjbGtfdm8xXQo+ID4+ICsgICAgICAgICAg
ICAtIGVudW06IFtlYXJjLCByZWYsIGF1ZCwgaGNsa192bzFdCj4gPj4gKyAgICAgICAgICAgIC0g
ZW51bTogW3JlZiwgYXVkLCBoY2xrX3ZvMV0KPiA+PiArICAgICAgICAgICAgLSBlbnVtOiBbYXVk
LCBoY2xrX3ZvMV0KPiA+PiArICAgICAgICAgICAgLSBjb25zdDogaGNsa192bzEKPiA+PiArCj4g
Pj4gKyAgICAgICAgcmVzZXRzOgo+ID4+ICsgICAgICAgICAgbWluSXRlbXM6IDIKPiA+PiArICAg
ICAgICAgIG1heEl0ZW1zOiAyCj4gPj4gKwo+ID4+ICsgICAgICAgIHJlc2V0LW5hbWVzOgo+ID4+
ICsgICAgICAgICAgaXRlbXM6Cj4gPj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHJlZgo+ID4+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBoZHAKPiA+PiArCj4gPj4gKyAgICAgICAgaW50ZXJydXB0czoK
PiA+PiArICAgICAgICAgIG1pbkl0ZW1zOiAxCj4gPj4gKyAgICAgICAgICBtYXhJdGVtczogNQo+
ID4+ICsKPiA+PiArICAgICAgICByb2NrY2hpcCx2bzFfZ3JmOgo+ID4+ICsgICAgICAgICAgJHJl
ZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+ID4+ICsgICAgICAg
ICAgZGVzY3JpcHRpb246IFNvbWUgUVAgcmVsYXRlZCBkYXRhIGlzIGFjY2Vzc2VkIHRocm91Z2gg
Vk8xIEdSRiByZWdzCj4gPj4gKwo+ID4+ICsgICAgICByZXF1aXJlZDoKPiA+PiArICAgICAgICAt
IHJlc2V0cwo+ID4+ICsgICAgICAgIC0gcmVzZXQtbmFtZXMKPiA+PiArICAgICAgICAtIHJvY2tj
aGlwLHZvMV9ncmYKPiA+PiArCj4gPj4gKyAgICBlbHNlOgo+ID4+ICsgICAgICAkcmVmOiAuLi9i
cmlkZ2Uvc3lub3BzeXMsZHctaGRtaS55YW1sIwo+ID4KPiA+IFRoaXMgaXMgb2RkLi4uIFdpdGgg
dGhpcyBwbHVzIHRoZSBhbW91bnQgb2YgY29uZGl0aW9uYWwgc2NoZW1hLCBJIHRoaW5rCj4gPiB0
aGlzIHNob3VsZCBiZSBhIG5ldyBzY2hlbWEgZG9jLiBEb2Vzbid0IGhhdmUgdG8gaGF2ZSBhIGNv
bW1vbgo+ID4gc2NoZW1hLiBZb3UgY2FuIGxldCB0aGUgMm5kIHVzZXIgb2YgdGhpcyBJUCBibG9j
ayBkbyB0aGF0Lgo+Cj4gWWVzLCB2MiBpcyBnb2luZyB0byBiZSBhIGNvbXBsZXRlbHkgc2VwYXJh
dGVkIGRyaXZlciBpbXBsZW1lbnRhdGlvbi4KClRoYXQgYWN0dWFsbHkgaGFzIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgZGVjaXNpb24gaGVyZS4gQmluZGluZ3MgYXJlCnNlcGFyYXRlIGZyb20gZHJp
dmVycy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
