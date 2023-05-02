Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E557C7EE22
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nec7b/+qzvpOOzv9NuLn/JrA81rEStY/IIqStxsvBuY=; b=dEcNZFm9tyRqIs
	4eTCwuBGVSFxkmrYJqMvMNoBGJh+AS4L8/mF94Et3Bm20OiYSXHSnwzR5fJmkwhZfvW2vb4yg4voH
	vv2giI10WS4sdv6DMy3d0bORxMlrKvBS/N853FW7BypLLB+tlKWHrhTpLwnv0kyzHxZcGCErRJrCY
	nvPLZ7s/cR9C1+xRpq1Ka2radp34zfbLNSCE+IjqWeZ6NZsRv7ZkgIYcv5gc8lNtFOqqysyaVuuze
	Rzwq33zBnl4HrKQ25P/R79TK6PXZfRd1fPKxutQfYmrezKUlQjZEqF7uPLGEAgzWKMDdUEuDlyMZb
	283axBUDRA1NRTT9EwiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptvre-002Twl-0b;
	Tue, 02 May 2023 19:40:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptvrZ-002TvM-0h;
	Tue, 02 May 2023 19:40:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 30E5B6280E;
	Tue,  2 May 2023 19:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A5A9C433A8;
	Tue,  2 May 2023 19:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683056435;
	bh=9Dokck6Jc4naZGVhGmqgJoJLIGEOHwC1dkDJ1O4Mipg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=iGl2fDpG6u+V7nw9XiF//RgP2qeZBecdfPEueb6HbN4e9bmh+rMmyTGvoJLh7U0IN
	 LT34Sz26U9ehDgNU9xWS2cGEUZMofynDqCr3NMtbyMjGcM7Ig7XSHoWMlWBe61LHXK
	 foLe03MQ+bujtF/31rycC13DeFqREes6CUthTP2NucBb4VgBQHzmK8qPa10Q9tcJfT
	 kGl1UrAJYytqHUS+kOaWhu7l1nLj3tflKoPvaGU5xVR382p8EsxG5UXDV4YqhNrt0H
	 gKKH9JwAQNWbY4QwmuAxfFPQMrV5eeoP/Nm8Xjp3aXp2elQ+yUvR0d0n0PahunLwSd
	 cPLAVqB30txpQ==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2a8ba23a2abso42608601fa.2;
        Tue, 02 May 2023 12:40:35 -0700 (PDT)
X-Gm-Message-State: AC+VfDyeozyjovMrK1nT1RUa0l+rrIVTBbOL8oqKkG1p7ZwzU0FbDb3n
	iMhCK2z5LsBttKke/2UCYKapk9WbG3nvqHKiOQ==
X-Google-Smtp-Source: ACHHUZ4oET00FnB+Fs3paO2KFWP6eBEztecawKM1A53Y541JaZi1w2Ra1iVebif6hgPcY0x6Ou0Xe91anOEl+A8jdBw=
X-Received: by 2002:a2e:8801:0:b0:2a8:b995:ffe5 with SMTP id
 x1-20020a2e8801000000b002a8b995ffe5mr4898960ljh.25.1683056432976; Tue, 02 May
 2023 12:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com> <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
In-Reply-To: <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 May 2023 14:40:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
Message-ID: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
	Christian Marangi <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_124037_335384_0EA2628A 
X-CRM114-Status: GOOD (  24.72  )
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCAzOjE14oCvQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEFwciAyNSwgMjAyMywgYXQgMTc6NTcsIFJvYiBIZXJy
aW5nIHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMjoyOOKAr0FNIEdlZXJ0IFV5
dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4KPiA+PiBEb2VzIHlv
dXIgc2NyaXB0IGFsc28gY2F0ZXIgZm9yIC5kdHMgZmlsZXMgbm90IG1hdGNoaW5nIGFueSBwYXR0
ZXJuLAo+ID4+IGJ1dCBpbmNsdWRpbmcgYSAuZHRzaSBmaWxlIHRoYXQgZG9lcyBtYXRjaCBhIHBh
dHRlcm4/Cj4gPgo+ID4gSSBhc3N1bWUgSSBidWlsdCBldmVyeXRoaW5nIGFmdGVyIG1vdmluZywg
YnV0IG1heWJlIG5vdC4uLgo+ID4KPiA+IFRoYXQncyBhbGwganVzdCAiZGV0YWlscyIuIEZpcnN0
LCB3ZSBuZWVkIGFncmVlbWVudCBvbiBhKSBtb3ZpbmcKPiA+IHRoaW5ncyB0byBzdWJkaXJzIGFu
ZCBiKSBkb2luZyBpdCAxLWJ5LTEgb3IgYWxsIGF0IG9uY2UuIFNvIGZhciB3ZSd2ZQo+ID4gYmVl
biBzdHVjayBvbiBhKSBmb3IgYmVpbmcgJ3RvbyBtdWNoIGNodXJuJy4KPgo+IFNvcnJ5IGZvciBt
aXNzaW5nIG1vc3Qgb2YgdGhlIGRpc2N1c3Npb24gbGFzdCB3ZWVrLiBUaGUgc2NyaXB0IHNvdW5k
cwo+IGZpbmUgdG8gbWUsIHRoZSBvbmx5IHJlYXNvbiBJIGRpZG4ndCB3YW50IHRvIGRvIHRoaXMg
aW4gdGhlIHBhc3QgaXMgdGhhdAo+IHdlIGhhZCB0aGUgcGxhbiB0byBtb3ZlIHBsYXRmb3JtcyBv
dXQgb2YgdGhlIGtlcm5lbCB0cmVlIHRvIGFuIGV4dGVybmFsCj4gcmVwb3NpdG9yeSBhbmQgSSB3
YW50ZWQgdG8gZG8gdGhpcyBwbGF0Zm9ybSBhdCBhIHRpbWUgYW5kIGFsc28gb25seSBtb3ZlCj4g
ZWFjaCBvbmUgb25jZS4gSSBkb24ndCB0aGluayB0aGF0IGlzIGdvaW5nIHRvIGhhcHBlbiBhbnl0
aW1lIHNvb24gbm93LAo+IHNvIGxldCdzIGp1c3QgZG8geW91ciBzY3JpcHQuCj4KPiBDYW4geW91
IHNlbmQgbWUgdGhlIHNjcmlwdCBhbmQvb3IgYSBwdWxsIHJlcXVlc3Qgb2YgdGhlIHJlc3VsdGlu
Zwo+IHRyZWUgYmFzZWQgb24gbXkgc29jL2R0IGJyYW5jaD8gRXZlcnl0aGluZyBpcyBtZXJnZWQg
dXBzdHJlYW0sCj4gYW5kIEkgdGhpbmsgZ2l0LW1lcmdlIHdvdWxkIGhhbmRsZSB0aGUgcmVtYWlu
aW5nIG1lcmdlcyB3aXRoIGFueQo+IG90aGVyIGNoYW5nZXMgaW4gbWFpbmxpbmUuCgpJJ3ZlIGR1
c3RlZCBvZmYgbXkgc2NyaXB0IGFuZCBtYWRlIGEgYnJhbmNoWzFdIHdpdGggdGhlIHJlc3VsdC4K
VGhlcmUncyBqdXN0IGEgY291cGxlIG9mIGZpeGVzIG5lZWRlZCBhZnRlciB0aGUgc2NyaXB0IGlz
IHJ1biAoc2VlIHRoZQp0b3AgY29tbWl0KS4gVGhlIGNyb3NzIGFyY2ggaW5jbHVkZXMgYXJlIGFs
bCBmaXhlZCB1cCBieSB0aGUgc2NyaXB0LgpkdGJzX2luc3RhbGwgbWFpbnRhaW5zIGEgZmxhdCBp
bnN0YWxsLiBJIGNvbXBhcmVkIHRoZSBudW1iZXIgb2YgLmR0YnMKYmVmb3JlIGFuZCBhZnRlciB0
byBjaGVjayB0aGUgc2NyaXB0LgoKSSB0aGluayB0aGUgb25seSBpc3N1ZSByZW1haW5pbmcgaXMg
ZmluYWxpemluZyB0aGUgbWFwcGluZyBvZgpwbGF0Zm9ybXMgdG8gc3ViZGlycy4gV2hhdCBJIGhh
dmUgY3VycmVudGx5IGlzIGEgbWl4dHVyZSBvZiBTb0MKZmFtaWxpZXMgYW5kIHZlbmRvcnMuIFRo
ZSBtb3N0IG5vdGFibGUgYXJlIGFsbCB0aGUgRnJlZXNjYWxlL05YUApwbGF0Zm9ybXMsIHB4YSwg
c29jZnBnYSwgYW5kIHN0bTMyLiBJdCdzIG5vdCBjb25zaXN0ZW50IHdpdGggYXJtNjQKZWl0aGVy
LiBPbmNlIHRoYXQncyBmaW5hbGl6ZWQsIEkgc3RpbGwgbmVlZCB0byBnbyB1cGRhdGUgTUFJTlRB
SU5FUlMuCgpIZXJlJ3MgdGhlIGN1cnJlbnQgbWFwcGluZzoKCnZlbmRvcl9tYXAgPSB7CiAgICAn
YWxwaGFzY2FsZScgOiAnYWxwaGFzY2FsZScsCiAgICAnYWxwaW5lJyA6ICdhbHBpbmUnLAogICAg
J2FydHBlYycgOiAnYXhpcycsCiAgICAnYXhtJyA6ICdsc2knLAogICAgJ2N4OScgOiAnY254dCcs
CiAgICAnZWN4JyA6ICdjYWx4ZWRhJywKICAgICdoaWdoYmFuaycgOiAnY2FseGVkYScsCiAgICAn
ZXA3JyA6ICdjaXJydXMnLAogICAgJ214cyc6ICdteHMnLAogICAgJ2lteDIzJzogJ214cycsCiAg
ICAnaW14MjgnOiAnbXhzJywKICAgICdzdW4nIDogJ2FsbHdpbm5lcicsCiAgICAnaW14JzogJ2lt
eCcsCiAgICAnZTYnIDogJ2lteCcsCiAgICAnZTcnIDogJ2lteCcsCiAgICAnbWJhNicgOiAnaW14
JywKICAgICdscyc6ICdmc2wnLAogICAgJ3ZmJzogJ2ZzbCcsCiAgICAncWNvbSc6ICdxY29tJywK
ICAgICdhbTMnIDogJ3RpJywKICAgICdhbTQnIDogJ3RpJywKICAgICdhbTUnIDogJ3RpJywKICAg
ICdkcmEnIDogJ3RpJywKICAgICdrZXlzdG9uZScgOiAndGknLAogICAgJ29tYXAnIDogJ3RpJywK
ICAgICdjb21wdWxhYicgOiAndGknLAogICAgJ2xvZ2ljcGQnIDogJ3RpJywKICAgICdlbHBpZGEn
IDogJ3RpJywKICAgICdtb3Rvcm9sYScgOiAndGknLAogICAgJ3R3bCcgOiAndGknLAogICAgJ2Rh
JyA6ICd0aScsCiAgICAnZG0nIDogJ3RpJywKICAgICduc3BpcmUnIDogJ25zcGlyZScsCiAgICAn
YXJtYWRhJyA6ICdtYXJ2ZWxsJywKICAgICdkb3ZlJyA6ICdtYXJ2ZWxsJywKICAgICdraXJrd29v
ZCcgOiAnbWFydmVsbCcsCiAgICAnb3Jpb24nIDogJ21hcnZlbGwnLAogICAgJ212ZWJ1JyA6ICdt
YXJ2ZWxsJywKICAgICdtbXAnIDogJ21hcnZlbGwnLAogICAgJ2JlcmxpbicgOiAnYmVybGluJywK
ICAgICdweGEyJyA6ICdweGEnLAogICAgJ3B4YTMnIDogJ3B4YScsCiAgICAncHhhJyA6ICdtYXJ2
ZWxsJywKICAgICdhcm0tJyA6ICdhcm0nLAogICAgJ2ludGVnJyA6ICdhcm0nLAogICAgJ21wcycg
OiAnYXJtJywKICAgICd2ZScgOiAnYXJtJywKICAgICdhc3BlZWQnIDogJ2FzcGVlZCcsCiAgICAn
YXN0MicgOiAnYXNwZWVkJywKICAgICdmYWNlYm9vaycgOiAnYXNwZWVkJywKICAgICdpYm0nIDog
J2FzcGVlZCcsCiAgICAnb3BlbmJtYycgOiAnYXNwZWVkJywKICAgICdlbjcnIDogJ2Fpcm9oYScs
CiAgICAnYXQ5MScgOiAnbWljcm9jaGlwJywKICAgICdzYW1hJyA6ICdtaWNyb2NoaXAnLAogICAg
J3NhbTknIDogJ21pY3JvY2hpcCcsCiAgICAndXNiXycgOiAnbWljcm9jaGlwJywKICAgICd0bnlf
JyA6ICdtaWNyb2NoaXAnLAogICAgJ21wYTE2MDAnIDogJ21pY3JvY2hpcCcsCiAgICAnYW5pbWVv
X2lwJyA6ICdtaWNyb2NoaXAnLAogICAgJ2Frcy1jZHUnIDogJ21pY3JvY2hpcCcsCiAgICAnZXRo
ZXJudXQ1JyA6ICdtaWNyb2NoaXAnLAogICAgJ2V2ay1wcm8zJyA6ICdtaWNyb2NoaXAnLAogICAg
J3BtOWc0NScgOiAnbWljcm9jaGlwJywKICAgICdnZTg2JyA6ICdtaWNyb2NoaXAnLAogICAgJ2Jj
bScgOiAnYnJjbScsCiAgICAnZXh5bm9zJyA6ICdzYW1zdW5nJywKICAgICdzM2MnIDogJ3NhbXN1
bmcnLAogICAgJ3M1cCcgOiAnc2Ftc3VuZycsCiAgICAnZ2VtaW5pJyA6ICdnZW1pbmknLAogICAg
J2hpMycgOiAnaGlzaWxpY29uJywKICAgICdoaXAnIDogJ2hpc2lsaWNvbicsCiAgICAnaGlzaScg
OiAnaGlzaWxpY29uJywKICAgICdzZDUnIDogJ2hpc2lsaWNvbicsCiAgICAnaHBlJyA6ICdocGUn
LAogICAgJ2ludGVsJzogJ2ludGVsJywKICAgICdtdCcgOiAnbWVkaWF0ZWsnLAogICAgJ21lc29u
JyA6ICdtZXNvbicsCiAgICAnbW94YScgOiAnbW94YScsCiAgICAnbXN0YXInIDogJ21zdGFyJywK
ICAgICdudXZvJyA6ICdudXZvdG9uJywKICAgICdscGMnIDogJ2xwYycsCiAgICAnbGFuOTYnIDog
J21pY3JvY2hpcCcsCiAgICAnb3dsJyA6ICdhY3Rpb25zJywKICAgICdveDgnIDogJ294c2VtaScs
CiAgICAncmRhJyA6ICdyZGEnLAogICAgJ3J0ZCcgOiAncmVhbHRlaycsCiAgICAncjcnIDogJ3Jl
bmVzYXMnLAogICAgJ3I4JyA6ICdyZW5lc2FzJywKICAgICdyOScgOiAncmVuZXNhcycsCiAgICAn
ZW1ldjInIDogJ3JlbmVzYXMnLAogICAgJ3NoNzNhJyA6ICdyZW5lc2FzJywKICAgICdnci0nIDog
J3JlbmVzYXMnLAogICAgJ2l3ZycgOiAncmVuZXNhcycsCiAgICAncmsnIDogJ3JvY2tjaGlwJywK
ICAgICdydjExJyA6ICdyb2NrY2hpcCcsCiAgICAncm9ja2NoaXAnIDogJ3JvY2tjaGlwJywKICAg
ICdzb2NmcGdhJyA6ICdzb2NmcGdhJywKICAgICdzdG0nIDogJ3N0bTMyJywKICAgICdzdGknIDog
J3N0aScsCiAgICAnc3QtcGluJyA6ICdzdGknLAogICAgJ3N0ZScgOiAnc3QtZXJpY3Nzb24nLAog
ICAgJ3NwZWFyJyA6ICdzcGVhcicsCiAgICAnYXhwJyA6ICdhbGx3aW5uZXInLAogICAgJ3RlZ3Jh
JyA6ICdudmlkaWEnLAogICAgJ21pbGJlYXV0JyA6ICdzb2Npb25leHQnLAogICAgJ3VuaXBoJyA6
ICdzb2Npb25leHQnLAogICAgJ3Z0ODUwMCcgOiAndnQ4NTAwJywKICAgICd3bTgnIDogJ3Z0ODUw
MCcsCiAgICAneGVuJyA6ICd4ZW4nLAogICAgJ3p4JyA6ICd6dGUnLAogICAgJ3p5bnEnIDogJ3hp
bGlueCcsCn0KClJvYgoKWzFdIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC9yb2JoL2xpbnV4LmdpdCBhcm0tZHRzLW1vdmUtdjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
