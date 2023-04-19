Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE173C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 06:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOP/SlnNbcq0UwdRcMVXh1lZZNnQizJLcqLDpF/acw0=; b=vkX/MWfkJpWjTq
	zTc3uJuH5GSv1zMFu9xbWhKiBLTtoicBZPe6cksyZS/TuXCjrUP5i1vbP5YUOEiT4yPbrvIcUUrcW
	HZ2ephcPXHMU3VBDkL3yWF8Azn0V5HxNd4dfdXEY77HQmYSPOjrA3PkU3yLUtuiTG+GSKlt33gtOf
	A48RK1srvxDO+8Zu45Jng0XAsrt7Z6vHVLQxYS7kdz1bvuPP/+Y1lOmdgm0iPy0RhV4JxLnrWAnsr
	wPwBVDXdlsBtmiqGTJz2a8IvyWtK1B/eHKBEAK/Qy+61TLyRGD67hWOMJP/ETTGTqrMfEiCGXkekE
	xSxZouqlZRgOLEMX1sfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1TA-004GTc-0x;
	Wed, 19 Apr 2023 06:39:08 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1T7-004GSQ-2a
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Apr 2023 06:39:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u3so26966773ejj.12
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Apr 2023 23:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681886342; x=1684478342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KwgCWIDMfSmIIVYKZ1EgpXTDmBn/KOl+t46257Cwt+8=;
        b=EURYBIYsozPZqVpWFH+KIdBRNy1zoZMUal2FzUSN1258gTUBjPu1FFCO8n0qOsJNZW
         88zfsz/Dfm7tbAsd1SCJN2OsqnAkHCjM8GoVptNoPA5OuA7a0g7Bh93RZWTRh8xYMfX6
         Ggl2rnJZahuPxyWhNcdLNu+dTkJ0NP0PBcO/5HLTE5ZbL5bf5GEi6fLRfqEudFDFU97P
         QPRdtSMH0Rdia/7dU9hDh+XXB5Ak8znRuz6sIF633Td7D0ehx6VqGp7Wd6GB1pr+EEh0
         JAipRe5ZeIdnPZf2VjDGGQ48QdalLSePo1SC+9Vt88crrQ9lQD39p3iZDC6EIEyGL5Wu
         LLaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681886342; x=1684478342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KwgCWIDMfSmIIVYKZ1EgpXTDmBn/KOl+t46257Cwt+8=;
        b=TqAuXA3DlLerUe0xjfdI6fUGcNLrBPO3dSG37nS+uopNKB4Ki58TIjsHwT6dIiD15Z
         aKui7EQsv8/inABnbjBV32YrSBjk3go0VRDME29ue+wTxee6G5J0cvm998wn5QmIO/aj
         UQCNmIHjzOUmxn3zxvqPf6UxxtbP/Zgi2B+sV3v1rdawmrtpwatXAM+R7Kk0vuK2qme2
         xll1VQN9rzi8GaMc7NUczevid9BYK6ijlwpDC2hx+zz3Bph88OIBcELiUsmsKxXo6zaj
         r/5W1moGrQch3dk5C+v1bgV9TR5Rdi5hC0uDbab943XA9Dj4i2LFzpcU/GS817wlc82A
         tDNw==
X-Gm-Message-State: AAQBX9dKyBzweKZXSNU+tdzAL7Q9mInbf/tPygNC0wQEzgzoi4G/MvkB
	Kr6ggdaqrxPoA2j/qvDqSlLVocZaf/NF5Tb46mCjJ2HU3VA=
X-Google-Smtp-Source: AKy350ZnQggNQe3irj94m+j8f0zfL5IWLm8qCMcDPSYbN1q/knuylUXkLxEoHzslf0e7Ovj+cP0QxEqVeWzsonoe9B4=
X-Received: by 2002:a17:906:1e43:b0:94a:5615:fbbd with SMTP id
 i3-20020a1709061e4300b0094a5615fbbdmr5447340ejj.15.1681886341913; Tue, 18 Apr
 2023 23:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAG0V13RUkKn1TPfa3DSeXDeBfJrYVXaouP2WMKrCdX-h0Xqrog@mail.gmail.com>
 <9c8e6503-632c-b5f7-1e3c-620cbab7b220@wolfvision.net>
In-Reply-To: <9c8e6503-632c-b5f7-1e3c-620cbab7b220@wolfvision.net>
From: Doug Brewer <brewer.doug@gmail.com>
Date: Wed, 19 Apr 2023 14:38:49 +0800
Message-ID: <CAG0V13SbdQX0NxkJWRxAf9bVFaMuZof9P2vJ8Qczis63TYVZMQ@mail.gmail.com>
Subject: Re: PCIe problem on RK3568 EVB
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_233905_835283_527493A4 
X-CRM114-Status: GOOD (  15.28  )
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

T24gVHVlLCBBcHIgMTgsIDIwMjMgYXQgNToyMuKAr1BNIE1pY2hhZWwgUmllc2NoCjxtaWNoYWVs
LnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4gd3JvdGU6Cj4KPiBIaSBEb3VnLAoKSGkgTWljaGFlbCwK
Cj4gT24gNC8xOC8yMyAwNDoxOSwgRG91ZyBCcmV3ZXIgd3JvdGU6Cj4gPiBIZWxsbywKPiA+Cj4g
PiBJIGFkZGVkIHRoZSBmb2xsb3dpbmcgbGluZXMgaW4gcmszNTY4LWV2YjEtdjEwLmR0czoKPiA+
Cj4gPiBwY2llMzBfYXZkZDB2OTogcGNpZTMwLWF2ZGQwdjkgewo+ID4gICAgICAgIGNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJwY2ll
MzBfYXZkZDB2OSI7Cj4gPiAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICAgICAgICBy
ZWd1bGF0b3ItYm9vdC1vbjsKPiA+ICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw5
MDAwMDA+Owo+ID4gICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDkwMDAwMD47Cj4g
PiAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gPiB9Owo+ID4KPiA+IHBjaWUz
MF9hdmRkMXY4OiBwY2llMzAtYXZkZDF2OCB7Cj4gPiAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOwo+ID4gICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInBjaWUzMF9hdmRkMXY4
IjsKPiA+ICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gICAgICAgIHJlZ3VsYXRvci1i
b290LW9uOwo+ID4gICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+
ID4gICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gICAgICAg
IHZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+ID4gfTsKPiA+Cj4gPiB2Y2MzdjNfcGNpZTog
Z3Bpby1yZWd1bGF0b3Igewo+ID4gICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVk
IjsKPiA+ICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjNfcGNpZSI7Cj4gPiAgICAgICAg
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiAgICAgICAgcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiAgICAgICAgZW5hYmxlLWFjdGl2ZS1oaWdo
Owo+ID4gICAgICAgIGdwaW8gPSA8JmdwaW8wIFJLX1BENCBHUElPX0FDVElWRV9ISUdIPjsKPiA+
ICAgICAgICBzdGFydHVwLWRlbGF5LXVzID0gPDUwMDA+Owo+ID4gICAgICAgIHZpbi1zdXBwbHkg
PSA8JmRjXzEydj47Cj4gPiB9Owo+ID4KPiA+ICZwY2llMzBwaHkgewo+ID4gICAgICAgIHN0YXR1
cyA9ICJva2F5IjsKPiA+IH07Cj4gPgo+ID4gJnBjaWUzeDIgewo+ID4gICAgICAgIHJlc2V0LWdw
aW9zID0gPCZncGlvMiBSS19QRDYgR1BJT19BQ1RJVkVfSElHSD47Cj4KPiBTaG91bGRuJ3QgdGhl
cmUgYmUgYSBwaW5jdHJsPyBJdCBzZWVtcyB0aGUgcGNpZTN4MiBoYXMgdG8gcG9zc2libGUgcGlu
b3V0cz8hCj4KPiA+ICAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llPjsKPiA+
ICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiB9Owo+ID4KPiBNYXliZSB5b3UgY2FuIHRha2Ug
dGhlIFJhZHhhIFJPQ0szIE1vZGVsIEEgYXMgbWFpbmxpbmUgcmVmZXJlbmNlIHNvbHV0aW9uLgoK
SSBhZGRlZCB0aGUgZm9sbG93aW5nIGxpbmVzOgoKJnBjaWUzeDIgewogICAgICAgcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKICAgICAgIHBpbmN0cmwtMCA9IDwmcGNpZTMweDJtMV9waW5zPjsK
ICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvMiBSS19QRDYgR1BJT19BQ1RJVkVfSElHSD47CiAg
ICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llPjsKICAgICAgIHN0YXR1cyA9ICJv
a2F5IjsKfTsKClNhbWUgcmVzdWx0LCBsc3BjaSBzaG93cyBub3RoaW5nLgoKPiA+IGxzcGNpIHBy
b2R1Y2VzIG5vIG91dHB1dCAobGl0ZXJhbGx5IG5vdGhpbmcpLCBldmVuIHdpdGggLXZ2dnYuCj4g
PiBBbnkgaWRlYSBob3cgdG8gZGVidWcgdGhpcz8gIFRoYW5rcy4KPgo+IEFnYWluLCBwbGVhc2Ug
c2hvdyB1cyB0aGUgZnVsbCBkbWVzZyBsb2cgYW5kIHlvdXIgY3VycmVudCAuY29uZmlnLgoKSGVy
ZSdzIG15IGtlcm5lbCBjb25maWcgZmlsZTogaHR0cDovL3NwcnVuZ2UudXMvTHRFclFtCgo+IEFk
ZGl0aW9uYWxseSwgdGhlIG91dHB1dCBvZgo+Cj4gICBjYXQgL3N5cy9rZXJuZWwvZGVidWcvZGV2
aWNlc19kZWZlcnJlZAo+Cj4gbWF5IGJlIGhlbHBmdWwgdG8gZmluZCBhbnkgZGV2aWNlcyB0aGF0
IGNvdWxkIG5vdCBiZSBwcm9iZWQgZHVlIHRvCj4gbWlzc2luZyBkZXBlbmRlbmNpZXMuCgojIGNh
dCAvc3lzL2tlcm5lbC9kZWJ1Zy9kZXZpY2VzX2RlZmVycmVkCiMKClNlZW1zIHRoZXJlJ3Mgbm8g
bWlzc2luZyBkZXBlbmRlbmNpZXMuCgo+IEJlc3QgcmVnYXJkcywKPiBNaWNoYWVsCgpSZWdhcmRz
LApEb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
