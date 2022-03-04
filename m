Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A5BC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 23:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsH5No+CAcdt38u772vfjU3qvo38pd/cNULrz9tem9U=; b=0tozaA9ELpHR2J
	ziqmGjLCXkmP2ZhcWS0iTPHbedssU5owRr0EAxzYtEXsI3kZncoTq2ihSq3zqyVIedTuWfN0F8FTP
	cdGfmekMGOPyz8Ury/6tdkEUIkdyPEkMFrVQsJT88O7gOOKMdHH/M7+XRq2acV/GWoV2n1yVxZ6J1
	19W8lpwrGVBxfsSHpFGYgyxDD3ZbNtE/phT3QemCAbLVpphI1UVwma+vBOqmO4BwucTcn7/FRzud4
	qUwS+mfcbxfSOfYMjw7Hae3crAiDQkbZCmsjvmeUTVTSNvfBjMSsJ5V+Bm3Ug+XCJq2glwg3AqNtE
	WvATr9FTmEoK3FC9xKvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQHUU-00CM21-MV; Fri, 04 Mar 2022 23:37:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQHUI-00CLyt-3Z; Fri, 04 Mar 2022 23:37:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AC19CB82C48;
 Fri,  4 Mar 2022 23:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B9BDC340F1;
 Fri,  4 Mar 2022 23:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646437046;
 bh=vYW2Inc1gofPuL2v43VLkLxzmzCwQMyJPz0gOoV+3UI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uCBwUfqYPO14kQFStyCPuYAY65dVziFIDvjAEG7SAjtkLay1Cnlwpgmrnoy3IBmj9
 2VwFzs5h0xty6dEF9K0mtUbloSRgzfr0uKTzZ3HcTzkHBcpYURHts2OndxLUe8mmXT
 3UzA9s97Whx5U4PnMclmZTKrkPvZLErB7ZnH47JgEc7ntpN63XRSqYk26Q8YUc32ZK
 VQ0ggKVqquIPRkPi3MsKr0juutUzr/3Jh5813ep8emmgUDXk/Rwwl/+mj0H/5Xadvc
 H8tRzXdD5aDw8xvhBaYm45hmnJicWs7ZKfs0jlG+neTFi6LgyaaZWBgBYda6d+mVrC
 xKl7rlaHRF52g==
Received: by mail-ej1-f50.google.com with SMTP id d10so20454402eje.10;
 Fri, 04 Mar 2022 15:37:26 -0800 (PST)
X-Gm-Message-State: AOAM531hn5XCrW46WxprjKA9Gd55r4r37SY9TaoCZr2rwnYfpShIvS1i
 9KWSFyLuiEPGFERaNAg0s1WB8AF5beLK2g06FA==
X-Google-Smtp-Source: ABdhPJysjUsy0FGiLn6wFPmbk1rqw0yxwzXpgWZTQIFFHB18ic8Jox7eKR/BaHXTH8v9rCjwtz80d697E9wdwnZEpWo=
X-Received: by 2002:a17:906:9913:b0:6d6:dc48:5d49 with SMTP id
 zl19-20020a170906991300b006d6dc485d49mr895534ejb.325.1646437044625; Fri, 04
 Mar 2022 15:37:24 -0800 (PST)
MIME-Version: 1.0
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
 <Yh+0B+iKx1gJXXCk@robh.at.kernel.org>
 <trinity-1ca1f3fd-1eeb-4c8d-a7e2-65851eb8002b-1646291055736@3c-app-gmx-bs69>
In-Reply-To: <trinity-1ca1f3fd-1eeb-4c8d-a7e2-65851eb8002b-1646291055736@3c-app-gmx-bs69>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Mar 2022 17:37:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJMZ1mZ91SYZR03rMkK-ZqFd-tCwV6zOrNu5NmP6V+duA@mail.gmail.com>
Message-ID: <CAL_JsqJMZ1mZ91SYZR03rMkK-ZqFd-tCwV6zOrNu5NmP6V+duA@mail.gmail.com>
Subject: Re: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT bindings
 to yaml
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, 
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>, 
 "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)"
 <linux-ide@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_153730_493199_8127764D 
X-CRM114-Status: GOOD (  30.84  )
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

T24gVGh1LCBNYXIgMywgMjAyMiBhdCAxOjA0IEFNIEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdA
cHVibGljLWZpbGVzLmRlPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IHRoYW5rcyBmb3IgcmV2aWV3
LAo+Cj4gaGF2ZSBwcmVwYXJlZCB0aGUgY2hhbmdlcyBiYXNlZCBvbiB5b3VycyBhbmQga3J6eXN6
dG9mIGNvbW1lbnRzCj4KPiBodHRwczovL2dpdGh1Yi5jb20vZnJhbmstdy9CUEktUjItNC4xNC9j
b21taXRzLzUuMTctbmV4dC0yMDIyMDIyNQo+Cj4gKGp1c3QgaWdub3JlIHRoZSB0b3AgMiBjb21t
aXRzKSBpIHRob3VnaHQgaSBoYWQgYSBzaXplLWNlbGxzLWVycm9yLCBidXQgZGlkIG5vdCBnZXQg
dGhlbSBhZ2FpbiBhZnRlciByZXZlcnRpbmcgdGhpcyBwYXJ0LCBzZWVtcyB0aGV5IGFyZSBmaXhl
ZCBieSBpbmNsdXNpb24gb2YgdGhlIHNhdGEtY29tbW9uIGJpbmRpbmcKPgo+ID4gR2VzZW5kZXQ6
IE1pdHR3b2NoLCAwMi4gTcOkcnogMjAyMiB1bSAxOToxNCBVaHIKPiA+IFZvbjogIlJvYiBIZXJy
aW5nIiA8cm9iaEBrZXJuZWwub3JnPgo+ID4gQW46ICJGcmFuayBXdW5kZXJsaWNoIiA8bGludXhA
Znctd2ViLmRlPgo+Cj4gPiBPbiBUdWUsIE1hciAwMSwgMjAyMiBhdCAwNDoyNDoxN1BNICswMTAw
LCBGcmFuayBXdW5kZXJsaWNoIHdyb3RlOgo+ID4gPiBGcm9tOiBGcmFuayBXdW5kZXJsaWNoIDxm
cmFuay13QHB1YmxpYy1maWxlcy5kZT4KPgo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2F0YS9haGNpLXBsYXRmb3JtLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXRhL2FoY2ktcGxhdGZvcm0ueWFtbAo+ID4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmNmNjdkZGZjNmFmYgo+
ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hdGEvYWhjaS1wbGF0Zm9ybS55YW1sCj4gPiA+IEBAIC0wLDAgKzEsMTYyIEBACj4g
PiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiA+ICslWUFNTCAxLjIK
PiA+ID4gKy0tLQo+ID4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9hdGEv
YWhjaS1wbGF0Zm9ybS55YW1sIwo+ID4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3Jn
L21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiA+ICsKPiA+ID4gK3RpdGxlOiBBSENJIFNBVEEg
Q29udHJvbGxlcgo+ID4KPiA+IGJsYW5rIGxpbmUuCj4KPiBkb25lCj4KPiA+ID4gK2Rlc2NyaXB0
aW9uOgo+ID4gPiArICBTQVRBIG5vZGVzIGFyZSBkZWZpbmVkIHRvIGRlc2NyaWJlIG9uLWNoaXAg
U2VyaWFsIEFUQSBjb250cm9sbGVycy4KPiA+ID4gKyAgRWFjaCBTQVRBIGNvbnRyb2xsZXIgc2hv
dWxkIGhhdmUgaXRzIG93biBub2RlLgo+ID4gPiArCj4gPiA+ICsgIEl0IGlzIHBvc3NpYmxlLCBi
dXQgbm90IHJlcXVpcmVkLCB0byByZXByZXNlbnQgZWFjaCBwb3J0IGFzIGEgc3ViLW5vZGUuCj4g
PiA+ICsgIEl0IGFsbG93cyB0byBlbmFibGUgZWFjaCBwb3J0IGluZGVwZW5kZW50bHkgd2hlbiBk
ZWFsaW5nIHdpdGggbXVsdGlwbGUKPiA+ID4gKyAgUEhZcy4KPiA+Cj4gPiBZb3UgbmVlZCBhICd8
JyBhZnRlciAnZGVzY3JpcHRpb24nIGlmIHlvdSB3YW50IHRvIG1haW50YWluIHRoZQo+ID4gcGFy
YWdyYXBocy4KPgo+IG9rIGFkZGVkIHwgdG8gYWxsIG11bHRpbGluZSBkZXNjcmlwdGlvbnMKPgo+
ID4gPiArCj4gPiA+ICttYWludGFpbmVyczoKPiA+ID4gKyAgLSBIYW5zIGRlIEdvZWRlIDxoZGVn
b2VkZUByZWRoYXQuY29tPgo+ID4gPiArICAtIEplbnMgQXhib2UgPGF4Ym9lQGtlcm5lbC5kaz4K
PiA+ID4gKwo+ID4gPiArYWxsT2Y6Cj4gPiA+ICstICRyZWY6ICJzYXRhLWNvbW1vbi55YW1sIyIK
PiA+ID4gKwo+ID4gPiArcHJvcGVydGllczoKPiA+ID4gKyAgY29tcGF0aWJsZToKPiA+ID4gKyAg
ICBvbmVPZjoKPiA+ID4gKyAgICAgIC0gaXRlbXM6Cj4gPiA+ICsgICAgICAgIC0gZW51bToKPiA+
ID4gKyAgICAgICAgICAtIGJyY20saXByb2MtYWhjaQo+ID4gPiArICAgICAgICAgIC0gbWFydmVs
bCxhcm1hZGEtOGstYWhjaQo+ID4gPiArICAgICAgICAgIC0gbWFydmVsbCxiZXJsaW4ycS1haGNp
Cj4gPiA+ICsgICAgICAgIC0gY29uc3Q6IGdlbmVyaWMtYWhjaQo+ID4gPiArICAgICAgLSBlbnVt
Ogo+ID4gPiArICAgICAgICAtIGJyY20saXByb2MtYWhjaQo+ID4gPiArICAgICAgICAtIGNhdml1
bSxvY3Rlb24tNzEzMC1haGNpCj4gPiA+ICsgICAgICAgIC0gaGlzaWxpY29uLGhpc2ktYWhjaQo+
ID4gPiArICAgICAgICAtIGlibSw0NzZndHItYWhjaQo+ID4gPiArICAgICAgICAtIG1hcnZlbGws
YXJtYWRhLTM3MDAtYWhjaQo+ID4gPiArICAgICAgICAtIG1hcnZlbGwsYXJtYWRhLTM4MC1haGNp
Cj4gPiA+ICsgICAgICAgIC0gc25wcyxkd2MtYWhjaQo+ID4gPiArICAgICAgICAtIHNucHMsc3Bl
YXItYWhjaQo+ID4KPiA+IEluc3RhbGwgeWFtbGxpbnQgYW5kIHJ1biAnbWFrZSBkdF9iaW5kaW5n
X2NoZWNrJy4gSXQncyBnb2luZyB0bwo+ID4gY29tcGxhaW4gYWJvdXQgdGhlIGluZGVudGF0aW9u
Lgo+Cj4geW91J3JlIHJpZ2h0LCBpIGhhZCBubyB5YW1sbGludCBpbnN0YWxsZWQsIHNvIGkgaGF2
ZSBub3Qgc2VlbiB0aGVzZSBpbmRlbnRpb24gZXJyb3JzCj4KPiA+ID4gKyAgYWhjaS1zdXBwbHk6
Cj4gPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiA+ICsgICAgICByZWd1bGF0b3IgZm9yIEFIQ0kg
Y29udHJvbGxlcgo+ID4gPiArCj4gPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4KPiA+IEdyb3VwIHdp
dGggJ2Nsb2NrcycKPgo+IG9rLCBhbHJlYWR5IGRvbmUgaW4gbXkgdHJlZSBiZWNhdXNlIG9mIGty
enlzenRvZnMgY29tbWVudAo+Cj4gPiA+ICsgIHBvcnRzLWltcGxlbWVudGVkOgo+ID4gPiArICAg
ICRyZWY6ICcvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzInCj4gPiA+ICsg
ICAgZGVzY3JpcHRpb246Cj4gPiA+ICsgICAgICBNYXNrIHRoYXQgaW5kaWNhdGVzIHdoaWNoIHBv
cnRzIHRoYXQgdGhlIEhCQSBzdXBwb3J0cwo+ID4gPiArICAgICAgYXJlIGF2YWlsYWJsZSBmb3Ig
c29mdHdhcmUgdG8gdXNlLiBVc2VmdWwgaWYgUE9SVFNfSU1QTAo+ID4gPiArICAgICAgaXMgbm90
IHByb2dyYW1tZWQgYnkgdGhlIEJJT1MsIHdoaWNoIGlzIHRydWUgd2l0aAo+ID4gPiArICAgICAg
c29tZSBlbWJlZGRlZCBTb0NzLgo+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPgo+ID4gQSB1aW50
MzIgaXMgb25seSBldmVyIDEgaXRlbS4gRHJvcC4KPiA+Cj4gPiBJSVJDLCBpc24ndCB0aGUgbWF4
IGhlcmUgMHhmZj8gQWRkIGNvbnN0cmFpbnRzLgo+Cj4gaSd2ZSBmb3VuZCBpdCBvbmx5IHNldCB0
byAweDEgc28gaSBoYXZlIGN1cnJlbnRseSBzZXQgdGhlIG1heGltdW0gdG8gMHgxLCBpcyB0aGlz
IG9rPwo+IElmIHNvbWUgaGlnaGVyIHZhbHVlIGlzIG5lZWRlZCBiaW5kaW5nIG5lZWRzIHRvIGJl
IHRvdWNoZWQuLi4KClRoZXJlJ3MgYSBzcGVjIGZvciBpdCwgc28gbm8gbmVlZCB0byBsb29rIGF0
IHdoYXQncyB1c2VkLiBDYWx4ZWRhIEFIQ0kKaGFkIDUgcG9ydHMgSUlSQy4KCgo+ID4gPiArICBy
ZWctbmFtZXM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+Cj4gPiBHcm91cCB3aXRoICdyZWcn
Lgo+Cj4gb2sKPgo+ID4gPiArcGF0dGVyblByb3BlcnRpZXM6Cj4gPiA+ICsgICJec2F0YS1wb3J0
QFswLTlhLWZdKyQiOgo+ID4gPiArICAgIHR5cGU6IG9iamVjdAo+ID4KPiA+ICAgICAgICBhZGRp
dGlvbmFsUHJvcGVydGllczogZmFsc2UKPgo+IG9rIGFkZGVkIHRvIG15IHRyZWUKPgo+IGFuZCBu
ZWVkZWQgdG8gYWRkIHBoeS1uYW1lcyBiZWNhdXNlIHNvbWUgbWFydmVsbCBib2FyZHMgdXNpbmcg
dGhpcwo+Cj4gYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS04MDQwLW1jYmluLXNp
bmdsZXNob3QuZHQueWFtbDogc2F0YUA1NDAwMDA6IHNhdGEtcG9ydEAxOiAncGh5LW5hbWVzJyBk
b2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycKPgo+IG5v
dyBpIGhhdmUgb25seSB0aGUgbWFydmVsbC1lcnJvcnMgYWJvdXQgaW5jb21wbGV0ZSBzYXRhLXBv
cnQgc3Vibm9kZSAod2l0aG91dCBwaHkvdGFyZ2V0LXN1cHBseSkgbGlrZSBpIG1lbnRpb24gaW4g
dGhlIHBhdGNoLi4uaG93IHRvIHByb2NlZWQgd2l0aCB0aGlzPwoKU28gdGhlIGNoaWxkIG5vZGVz
IGFyZSBpbmNvbXBsZXRlPyBUaGV5IHNob3VsZCBiZSBkaXNhYmxlZCB0aGVuCihzdGF0dXMgPSAi
ZGlzYWJsZWQiKSBhbmQgdGhhdCB0dXJucyBvZmYgcmVxdWlyZWQgcHJvcGVydGllcyBjaGVja3Mu
CgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
