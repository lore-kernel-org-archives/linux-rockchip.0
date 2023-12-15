Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C72ACC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 06:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNZaOqhJmej6ddFOzDPvANLcPjXS0JGOSKiVCoZVwgQ=; b=VxKUC2adwkjCYk
	Noxk8mo9cPH/wlasGC2RFsXrs4iCZDudbTBVGoiFDENz5bp/gHbKILzaYOJBX6m3WOD7EAwkGzhB1
	oF4lDGso0cB05eh941rcNLJ+n7GYjgQQSKc1ISC3RSQfkL/S7eFnfE+4XTsVI/jN6FpgwoYJfYIYw
	KaFOBgDsA6GPUj3/knH8ItM3EIUx99YVFpSg7OcFGNVLZb+NyWKeWLEz/bTnQ4ev9MWzl0fMP9F0r
	5uXdUkRJbwt9WHNdfYV9Mp3KRWmRcsrfLW8y77WMIJJ7YNdJ55rJwn1U5qG0OrqKPEX9aR7eS76fp
	3Xk8aks2xBlbWa0Shmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1om-002CdI-0P;
	Fri, 15 Dec 2023 06:37:04 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1oj-002CcG-0h
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Dec 2023 06:37:02 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5c08c47c055so2657617b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 22:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1702622217; x=1703227017; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skbHt4xm7Klu+/6DuZigwMambDElCj4uSrCuTLPKbOo=;
        b=Y6gD0ZXFk9Y1t60y4EoGbyUmdxbiftV0UIFxm9TOMujH/67R6Uk02A6Fv6Ep5J784T
         qFuMg7GISimvtMFqjTxfD/BTGFseU61eUWFattBM4EFUeJiga1IyivvxXk7MCNS9HqSl
         Q+zbCrY3SijELcSG0fJuxgGRjFudXCgqZTAMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702622217; x=1703227017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=skbHt4xm7Klu+/6DuZigwMambDElCj4uSrCuTLPKbOo=;
        b=uIIXaNYP+4SHDvwSWQP6Z9DpK296xhnVYaJY02cGgUxDOtv22zuAWd7gWE38ML03/V
         +mW5L+IH0fxLATtp/jb7yW1mY7ei3t6nta8Dvm9ZWQQ6IEds5GjE3wwxUVM+qhApS92W
         UIGfEyXG7Ccb+inj93VS9apgJ343sVl/lradHAh+Fs3ehNmRASrFE2pgw73HS1ghKSOp
         16N81QF3eMO17th6BBWAufolJS86ELH6E+gChvNHotmZR1O92/jQTbZvpk291anDPCHx
         e/lw5//uhXtsVL0CK0wWwB/VWQb20toJn3v+0FLTs1DPfHG5YXG799Ee0K9k8WTLem1E
         CkfQ==
X-Gm-Message-State: AOJu0Yyr1CKnVx2nwZpek3auGj9PU548+6HGVQ0kEzKjyHkfbGp8LNxM
	QVnAQulnlY1N1aGhVeGNf3Iu6ZR5x6YYBhgkQsM+xw==
X-Google-Smtp-Source: AGHT+IEdxc4p9lQT36rs5JTkrGy8HWp9Evc9OxIga+yLzdwaOl1pUAmTIQhAYNC+utuY5xiaxTd4rtQywMi6Zzfauw8=
X-Received: by 2002:a81:4e83:0:b0:5e4:9d7a:d1cc with SMTP id
 c125-20020a814e83000000b005e49d7ad1ccmr50919ywb.46.1702622217445; Thu, 14 Dec
 2023 22:36:57 -0800 (PST)
MIME-Version: 1.0
References: <20231211085939.5478-1-jagan@amarulasolutions.com>
In-Reply-To: <20231211085939.5478-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 15 Dec 2023 12:06:46 +0530
Message-ID: <CAMty3ZBNC7Fpi-S4uOwfJ3ULWQ27PiVAKTqbnQKB3nB5vXHrhg@mail.gmail.com>
Subject: Re: [PATCH 00/17] video: dw_hdmi: Support Vendor PHY
To: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Anatolij Gustschin <agust@denx.de>
Cc: u-boot@lists.denx.de, Da Xue <da.xue@libretech.co>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Andre Przywara <andre.przywara@arm.com>, 
	Simon Glass <sjg@chromium.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_223701_267051_E25AFBDD 
X-CRM114-Status: GOOD (  12.65  )
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

SGkgSGVpa28vS2VydmVyL0FuYXRvbG9qLAoKT24gTW9uLCBEZWMgMTEsIDIwMjMgYXQgMjozMOKA
r1BNIEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPiB3cm90ZToKPgo+IFVu
bGlrZSBSSzMzOTksIFN1bnhpL01lc29uIERXIEhETUkgdGhlIG5ldyBSb2NrY2hpcCBTb0MgUmsz
MzI4IHdvdWxkCj4gc3VwcG9ydCBleHRlcm5hbCB2ZW5kb3IgUEhZIHdpdGggRFcgSERNSSBjaGlw
Lgo+Cj4gU3VwcG9ydCB0aGlzIHZlbmRvciBQSFkgYnkgYWRkaW5nIG5ldyBwbGF0Zm9ybSBQSFkg
b3BzIHZpYSBEVyBIRE1JCj4gZHJpdmVyIGFuZCBjYWxsIHRoZSByZXNwZWN0aXZlIGdlbmVyaWMg
cGh5IGZyb20gcGxhdGZvcm0gZHJpdmVyIGNvZGUuCj4KPiBUaGlzIHNlcmllcyB0ZXN0ZWQgaW4g
UkszMzI4IHdpdGggMTA4MHAgKDE5MjB4MTA4MCkgcmVzb2x1dGlvbi4KPgo+IFBhdGNoIDAwMDEv
MDAwNTogU3VwcG9ydCBWZW5kb3IgUEhZCj4gUGF0Y2ggMDAwNi8wMDA4OiBWT1AgZXh0ZW5zaW9u
IGZvciB3aW4sIGRzcCBvZmZzZXRzCj4gUGF0Y2ggMDAwOS8wMDEwOiBSSzMzMjggVk9QLCBIRE1J
IGNsb2Nrcwo+IFBhdGNoIDAwMTE6ICAgICAgUm9ja2NoaXAgSW5ubyBIRE1JIFBIWQo+IFBhdGNo
IDAwMTI6ICAgICAgUkszMzI4IEhETUkgZHJpdmVyCj4gUGF0Y2ggMDAxMzogICAgICBSSzMzMjgg
Vk9QIGRyaXZlcgo+IFBhdGNoIDAwMTQvMDAxNzogRW5hYmxlIEhETUkgT3V0IGZvciBSSzMzMjgK
Pgo+IEltcG9ydGVudDoKPiBPbmUgcG9udGVudGlhbCBpc3N1ZXMgaXMgdGhhdCBMaW51eCBIRE1J
IG91dCBvbiBSSzMzMjggaGFzIGVmZmVjdGVkIGJ5Cj4gdGhpcyBwYXRjaHNldCBhcyBJIHdvdWxk
bid0IGZpbmQgYW55IHJlbGF0aW9uIG9yIGNsdWUuCj4KPiBbICAgIDAuNzUyMDE2XSBMb2FkaW5n
IGNvbXBpbGVkLWluIFguNTA5IGNlcnRpZmljYXRlcwo+IFsgICAgMC43ODc3OTZdIGlubm9faGRt
aV9waHlfcmszMzI4X2Nsa19yZWNhbGNfcmF0ZTogcGFyZW50IDI0MDAwMDAwCj4gWyAgICAwLjc4
ODM5MV0gaW5uby1oZG1pLXBoeSBmZjQzMDAwMC5waHk6IGlubm9faGRtaV9waHlfcmszMzI4X2Ns
a19yZWNhbGNfcmF0ZSByYXRlIDE0ODUwMDAwMCB2Y28gMTQ4NTAwMDAwCj4gWyAgICAwLjc5ODM1
M10gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZjM3MDAwMC52b3AgKG9w
cyB2b3BfY29tcG9uZW50X29wcykKPiBbICAgIDAuNzk5NDAzXSBkd2hkbWktcm9ja2NoaXAgZmYz
YzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMHY5IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkgcmVndWxh
dG9yCj4gWyAgICAwLjgwMDI4OF0gcmtfaW9tbXUgZmYzNzNmMDAuaW9tbXU6IEVuYWJsZSBzdGFs
bCByZXF1ZXN0IHRpbWVkIG91dCwgc3RhdHVzOiAweDAwMDA0Ygo+IFsgICAgMC44MDExMzFdIGR3
aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiBzdXBwbHkgYXZkZC0xdjggbm90IGZvdW5kLCB1
c2luZyBkdW1teSByZWd1bGF0b3IKPiBbICAgIDAuODAyMDU2XSBya19pb21tdSBmZjM3M2YwMC5p
b21tdTogRGlzYWJsZSBwYWdpbmcgcmVxdWVzdCB0aW1lZCBvdXQsIHN0YXR1czogMHgwMDAwNGIK
PiBbICAgIDAuODAzMjMzXSBkd2hkbWktcm9ja2NoaXAgZmYzYzAwMDAuaGRtaTogRGV0ZWN0ZWQg
SERNSSBUWCBjb250cm9sbGVyIHYyLjExYSB3aXRoIEhEQ1AgKGlubm9fZHdfaGRtaV9waHkyKQo+
IFsgICAgMC44MDUzNTVdIGR3aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiByZWdpc3RlcmVk
IERlc2lnbldhcmUgSERNSSBJMkMgYnVzIGRyaXZlcgo+IFsgICAgMC44MDg3NjldIHJvY2tjaGlw
LWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQgZmYzYzAwMDAuaGRtaSAob3BzIGR3X2hkbWlf
cm9ja2NoaXBfb3BzKQo+IFsgICAgMC44MTA4NjldIFtkcm1dIEluaXRpYWxpemVkIHJvY2tjaGlw
IDEuMC4wIDIwMTQwODE4IGZvciBkaXNwbGF5LXN1YnN5c3RlbSBvbiBtaW5vciAwCj4KPiBUaGUg
b25seSB3YXkgSSBjYW4gdXNlIExpbnV4IEhETUkgYnkgZGlzYWJsaW5nIElPTU1VIG9yIHN1cHBv
cnQKPiBkaXNhYmxlLWlvbW11IGxpbmsgZm9yIFJLMzMyOCB2aWEgRFQgWzFdLgo+Cj4gWzFdIGh0
dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2RldmljZXRyZWUvbXNnNjA1MTI0Lmh0bWwKCklz
IGFueW9uZSBhd2FyZSBvZiB0aGlzIGlzc3VlPyBJIGRpZCBwb3N0IHRoZSBwYXRjaGVzIGZvciBM
aW51eCBJT01NVQpidXQgc2VlbXMgbm90IGEgcHJvcGVyIHNvbHV0aW9uLiBBbnkgc3VnZ2VzdGlv
bnM/CgpUaGFua3MsCkphZ2FuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
