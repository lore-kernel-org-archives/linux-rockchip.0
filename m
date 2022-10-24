Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFBAAC38A2D
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 20:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+C1JG1+h+5wcuqQAdBi45Szn1mP35zcwttksasM0y4=; b=qt6o+9Yv88vuiX
	pXY/fI+aVDjXBBMSIN51vbIsp3zEIsU8H94kZ8YlOj6ev89a6QC7BqaxlOeXtv/qDXW/rEyhWEoYC
	grh1GAANEz7KA/MPSI7gFw9i5nTA4d72vnGwiMVJPeL9wj1szMvDMLN73X6vKnf5nLyR35CMcLLBS
	hYYElFMt3ndCR1Gmq+XXg70wma6u9oXEevU8cIbypMryQy1YYBZXNvMn+yu1lum71ou8mavxxDrtS
	q+TsbqPd22ilB6Ci46P3+QOG4isvhiuU9xmZYZVK4QY5hZ9xQxlAhpiC05w+yMT/6Bf//49QQonPS
	VYDr77fh6Gk9hei4zYBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on3vN-002vE3-Ac; Mon, 24 Oct 2022 20:19:53 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on3sI-002tkS-3r; Mon, 24 Oct 2022 20:16:44 +0000
Received: by mail-wm1-x334.google.com with SMTP id bh7-20020a05600c3d0700b003c6fb3b2052so7280222wmb.2;
        Mon, 24 Oct 2022 13:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9ed7bMV3pZPwp5vouAUj8oUDbSAtj4hiuKrUSv/lak=;
        b=agOIyiO5ryyJk3ZIcpmVzCeFNdSLnKfhi5W3NLU6tdTBM3MxHzy5ZOPjmjjpnS80/P
         fnZE3cSyIsAOrBXUPM4+St3sCnjNCSRDCv2joHN+oVmS8tOpNxRAZnyo/MlSHWdmk3OK
         G0/lOJM2zC9V8UhH4+RfCmnl7xtZ+hrZ8k/RSCSTx5IVs7Wen5bZwyiaF0DOtnJw+2Ln
         4T18Y+mWm5kZJHadzP9L6S1xJEal4SkqaUeJ/Tb51kIJyJdK9/H9zfZ90tMc1Wj5lEio
         cd5I4CAKfcCctNzpY06qlm8G3hCEKdAwakl8FyRCTm4PcdZms/+X6Za7k5iH1wmttDzp
         p19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9ed7bMV3pZPwp5vouAUj8oUDbSAtj4hiuKrUSv/lak=;
        b=DtjYsfwO6xwaXCgDHfdxi/8aFO/7IDaPpm5hnMe0W1EZHhTUQUY+nm+R4KIAD7xf4G
         NvqXfXlY9wn3xY8jVhRuGiUUZL9iZQnao1PSSOceH1aSD3WNrQqQ0dQZNkljcw9SHRoz
         OmU1IJ9kRLFD4mAk5Xx6JO8K6M5qJ8ZiYJnUNRTxJ6bo/wyhwuc+ehFmMy0FO1egSVGu
         NAWGmsTdWDK/2rC8/fenPnjlEv7NWsYn7h0aYH6YKtWJQ7r3EL8qu6d7ws3uZdfU4x8z
         DPxmDvQOJl5HBiIJvptuX0aBx4jcEg7WgaMD5WEpdlMG2N7RRaDeSDxJtVZmPrKVKGgw
         jEBA==
X-Gm-Message-State: ACrzQf35BhA+sX9F4zkLFvhfCX6ZX0bzIHqwXoL8SO6mZ+K22U2THKhv
	PCiM5Ex6EjrcIbAxJeRzqWe+odH80RdNVjbBF54=
X-Google-Smtp-Source: AMsMyM7xa4Ly82aRqbE40+JOrlCjUC2tANKr0UN56zsNRY6I52d2j/9oCji2atR3311eDNCP3jJF3h92LfkJopZA+ys=
X-Received: by 2002:a05:600c:5122:b0:3c6:fcce:e4e2 with SMTP id
 o34-20020a05600c512200b003c6fccee4e2mr24525426wms.65.1666642598270; Mon, 24
 Oct 2022 13:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <20221005085439.740992-1-megi@xff.cz> <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core> <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core> <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
 <20221021193248.2he6amnj7knk4biu@core> <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
 <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
 <875ygbsrf3.fsf@bloch.sibelius.xs4all.nl> <5a8f9934-1959-7962-d575-e3c2f5bc6ade@arm.com>
In-Reply-To: <5a8f9934-1959-7962-d575-e3c2f5bc6ade@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 24 Oct 2022 16:16:24 -0400
Message-ID: <CAMdYzYrXp1kgdRpBmnfiFrXcdkk6_oWozpywgCYbNo_MU+8+=A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
To: Robin Murphy <robin.murphy@arm.com>
Cc: Mark Kettenis <mark.kettenis@xs4all.nl>, megi@xff.cz, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net, 
	frattaroli.nicolas@gmail.com, s.hauer@pengutronix.de, frank-w@public-files.de, 
	ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com, jbx6244@gmail.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_131642_216824_0ECCBDB9 
X-CRM114-Status: GOOD (  38.41  )
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

T24gTW9uLCBPY3QgMjQsIDIwMjIgYXQgNzowNSBBTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMjItMTAtMjIgMTg6MjQsIE1hcmsgS2V0dGVuaXMg
d3JvdGU6Cj4gPj4gRnJvbTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiA+PiBE
YXRlOiBTYXQsIDIyIE9jdCAyMDIyIDA4OjE5OjU3IC0wNDAwCj4gPgo+ID4gSGVsbG8gUGV0ZXIs
Cj4gPgo+ID4+IE9uIEZyaSwgT2N0IDIxLCAyMDIyIGF0IDQ6NTIgUE0gTWFyayBLZXR0ZW5pcyA8
bWFyay5rZXR0ZW5pc0B4czRhbGwubmw+IHdyb3RlOgo+ID4+Pgo+ID4+Pj4gRGF0ZTogRnJpLCAy
MSBPY3QgMjAyMiAyMTozMjo0OCArMDIwMAo+ID4+Pj4gRnJvbTogT25kxZllaiBKaXJtYW4gPG1l
Z2lAeGZmLmN6Pgo+ID4+Pj4KPiA+Pj4+IE9uIEZyaSwgT2N0IDIxLCAyMDIyIGF0IDEyOjQ4OjE1
UE0gLTA0MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4gPj4+Pj4gT24gRnJpLCBPY3QgMjEsIDIwMjIg
YXQgMTE6MzkgQU0gT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cm90ZToKPiA+Pj4+Pj4K
PiA+Pj4+Pj4gT24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgMDk6MDc6NTBBTSAtMDQwMCwgUGV0ZXIg
R2VpcyB3cm90ZToKPiA+Pj4+Pj4+IEdvb2QgTW9ybmluZyBIZWlrbywKPiA+Pj4+Pj4+Cj4gPj4+
Pj4+PiBBcG9sb2dpZXMgZm9yIGp1c3QgZ2V0dGluZyB0byB0aGlzLCBJJ20gc3RpbGwgaW4gdGhl
IG1pZGRsZSBvZiBtb3ZpbmcKPiA+Pj4+Pj4+IGFuZCBqdXN0IGdvdCBteSBsYWIgc2V0IGJhY2sg
dXAuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSSd2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgYW5k
IGl0IGxlYWRzIHRvIHRoZSBzYW1lIHJlZ3Jlc3Npb24gd2l0aAo+ID4+Pj4+Pj4gTlZNZSBkcml2
ZXMuIEEgbG9vcCBvZiBtZDVzdW0gb24gdHdvIGlkZW50aWNhbCA0R0IgcmFuZG9tIGZpbGVzCj4g
Pj4+Pj4+PiBwcm9kdWNlcyB0aGUgZm9sbG93aW5nIHJlc3VsdHM6Cj4gPj4+Pj4+PiBkMTFjZjBj
YWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kLmltZwo+ID4+Pj4+Pj4gZmFkOTdl
OTFkYThkNGZkNTU0Yzg5NWNhZmE4OTgwOWIgIHRlc3QtcmFuZDIuaW1nCj4gPj4+Pj4+PiAyZDU2
YTdiYWEwNWMzODUzNWY0YzE5YTJiMzcxZjkwYSAgdGVzdC1yYW5kLmltZwo+ID4+Pj4+Pj4gNzRl
OGU2ZjkzZDdjM2RjM2FkMjUwZTkxMTc2ZjU5MDEgIHRlc3QtcmFuZDIuaW1nCj4gPj4+Pj4+PiAy
NWNmY2ZlY2Y0ZGQ1MjllNGU5ZmJiZTJiZTQ4MjA1MyAgdGVzdC1yYW5kLmltZwo+ID4+Pj4+Pj4g
NzRlOGU2ZjkzZDdjM2RjM2FkMjUwZTkxMTc2ZjU5MDEgIHRlc3QtcmFuZDIuaW1nCj4gPj4+Pj4+
PiBiOTYzNzUwNWJmODhlZDcyNWY2ZDAzZGViNzA2NWRhYiAgdGVzdC1yYW5kLmltZwo+ID4+Pj4+
Pj4gZjc0MzdlODhkNTI0ZWE5MmUwOTdkYjUxZGNlMWM2MGQgIHRlc3QtcmFuZDIuaW1nCj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4gQmVmb3JlIHRoaXMgcGF0Y2ggc2VyaWVzOgo+ID4+Pj4+Pj4gZDExY2Yw
Y2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+Pj4+Pj4+IGQxMWNm
MGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4+Pj4+Pj4gZDEx
Y2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+Pj4+Pj4+IGQx
MWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4+Pj4+Pj4g
ZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+Pj4+Pj4+
IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4+Pj4+
Pj4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+Pj4+
Pj4+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IFRob3VnaCBJIGRvIGxvdmUgd2hlcmUgdGhpcyBwYXRjaCBpcyBnb2lu
ZyBhbmQgd291bGQgbGlrZSB0byBzZWUgaWYgaXQKPiA+Pj4+Pj4+IGNhbiBiZSBtYWRlIHRvIHdv
cmssIGluIGl0cyBjdXJyZW50IGZvcm0gaXQgZG9lcyBub3QuCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRo
YW5rcyBmb3IgdGhlIHRlc3QuIENhbiB5b3UgcGxlYXNlIGFsc28gdGVzdCB2MT8gQWxzbyBwbGVh
c2Ugc2hhcmUgbHNwY2kgLXZ2dgo+ID4+Pj4+PiBvZiB5b3VyIG52bWUgZHJpdmUsIHNvIHRoYXQg
d2UgY2FuIHNlZSBhbGxvY2F0ZWQgYWRkcmVzcyByYW5nZXMsIGV0Yy4KPiA+Pj4+Pgo+ID4+Pj4+
IEdvb2QgY2F0Y2gsIHdpdGggeW91ciBwYXRjaCBhcyBpcywgdGhlIGZvbGxvd2luZyBpc3N1ZSBj
cm9wcyB1cDoKPiA+Pj4+PiBSZWdpb24gMDogTWVtb3J5IGF0IDMwMDAwMDAwMCAoNjQtYml0LCBu
b24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xNktdCj4gPj4+Pj4gUmVnaW9uIDI6IEkvTyBwb3J0cyBh
dCAxMDAwIFtkaXNhYmxlZF0gW3NpemU9MjU2XQo+ID4+Pj4+Cj4gPj4+Pj4gSG93ZXZlciwgd2l0
aCBhIHNpbXBsZSBmaXgsIHdlIGNhbiBnZXQgdGhpczoKPiA+Pj4+PiBSZWdpb24gMDogTWVtb3J5
IGF0IDMwMDAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbdmlydHVhbF0gW3NpemU9
MTZLXQo+ID4+Pj4+IFJlZ2lvbiAyOiBJL08gcG9ydHMgYXQgMTAwMCBbdmlydHVhbF0gW3NpemU9
MjU2XQo+ID4+Pj4+Cj4gPj4+Pj4gYW5kIHdpdGggaXQgYSB3b3JraW5nIE5WTWUgZHJpdmUuCj4g
Pj4+Pj4KPiA+Pj4+PiBDaGFuZ2UgdGhlIGZvbGxvd2luZyByYW5nZToKPiA+Pj4+PiAweDAyMDAw
MDAwIDB4MCAweDQwMDAwMDAwIDB4MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPiA+Pj4+
PiB0bwo+ID4+Pj4+IDB4MDIwMDAwMDAgMHgwIDB4MDAwMDAwMDAgMHgzIDB4MDAwMDAwMDAgMHgw
IDB4NDAwMDAwMDA+Owo+ID4+Pj4KPiA+Pj4+IEkndmUgYWxyZWFkeSB0cmllZCB0aGlzLCBidXQg
dGhpcyB1bmZyb3R1bmF0ZWx5IGJyZWFrcyB0aGUgd2lmaSBjYXJkcy4KPiA+Pj4+ICh0aG9zZSBv
bmx5IHVzZSB0aGUgSS9PIHNwYWNlKSBNYXliZSBiZWNhdXNlIEkvTyBhbmQgbWVtb3J5IGFkZHJl
c3Mgc3BhY2VzCj4gPj4+PiBub3cgb3ZlcmxhcCwgSSBkb24ndCBrbm93LiBUaGF0J3Mgd2h5IEkg
dXNlZCB0aGUgMUdpQiBvZmZzZXQgZm9yIG1lbW9yeQo+ID4+Pj4gc3BhY2UuCj4gPj4+Cj4gPj4+
IE1lYW53aGlsZSwgSSBoYXZlIGFuIE5WTWUgZHJpdmUgdGhhdCBvbmx5IHdvcmtzIGlmIG1taW8g
aXMgY29tcGxldGVseQo+ID4+PiB1bnRyYW5zbGF0ZWQuICBUaGlzIGlzIGFuIEFEQVRBIFNYODAw
ME5QIGRyaXZlLCB3aGljaCB1c2VzIGEgU2lsaWNvbgo+ID4+PiBNb3Rpb24gU00yMjYwIGNvbnRy
b2xsZXIuCj4gPj4+Cj4gPj4+IFNvIGZvciBtZSwgYSB3b3JraW5nIGNvbmZpZ3VyYXRpb24gaGFz
IHRoZSBmb2xsb3dpbmcgInJhbmdlcyI6Cj4gPj4+Cj4gPj4+IHJhbmdlcyA9IDwweDAxMDAwMDAw
IDB4MCAweDAwMDAwMDAwIDB4MyAweDNmZmYwMDAwIDB4MCAweDAwMDEwMDAwPiwKPiA+Pj4gICAg
ICAgICAgIDwweDAyMDAwMDAwIDB4MCAweGY0MDAwMDAwIDB4MCAweGY0MDAwMDAwIDB4MCAweDAy
MDAwMDAwPiwKPiA+Pj4gICAgICAgICAgIDwweDAzMDAwMDAwIDB4MyAweDEwMDAwMDAwIDB4MyAw
eDEwMDAwMDAwIDB4MCAweDJmZmYwMDAwPjsKPiA+Pj4KPiA+Pj4gVGhpcyBhbHNvIG5lZWRzIGNo
YW5nZXMgdG8gdGhlICJyZWciIHByb3Blcnk6Cj4gPj4+Cj4gPj4+IHJlZyA9IDwweDMgMHhjMDAw
MDAwMCAweDAgMHgwMDQwMDAwMD4sCj4gPj4+ICAgICAgICA8MHgwIDB4ZmUyNjAwMDAgMHgwIDB4
MDAwMTAwMDA+LAo+ID4+PiAgICAgICAgPDB4MyAweDAwMDAwMDAwIDB4MCAweDEwMDAwMDAwPjsK
PiA+Pgo+ID4+IE5vdyB0aGlzIGlzIGludGVyZXN0aW5nLiBJJ3ZlIGJlZW4gcmVhZGluZyB1cCBv
biBQQ0llIHJhbmdlcyBhbmQgd2hhdAo+ID4+IGlzIG5lY2Vzc2FyeSBmb3IgdGhpbmdzIHRvIHdv
cmsgcHJvcGVybHksIGFuZCBJIGZvdW5kIHRoaXMgaW50ZXJlc3RpbmcKPiA+PiBhcnRpY2xlIGZy
b20gQVJNOgo+ID4+IGh0dHBzOi8vZGV2ZWxvcGVyLmFybS5jb20vZG9jdW1lbnRhdGlvbi8xMDIz
MzcvMDAwMC9Qcm9ncmFtbWVycy1tb2RlbC9NZW1vcnktbWFwcy9BUC1zeXN0ZW0tbWVtb3J5LW1h
cC9QQ0llLU1NSU8tYW5kLUVDQU0tbWVtb3J5LXJlZ2lvbnMKPiA+Pgo+ID4+IFRMRFI6IFdlIG5l
ZWQgYSBsb3cgcmVnaW9uIChiZWxvdyA0ZykgYW5kIGEgaGlnaCByZWdpb24uCj4gPgo+ID4gV2Vs
bCwgdGhhdCBkZXNjcmlwdGlvbiBhcHBsaWVzIHRvIGEgc3BlY2lmaWMgQVJNIHJlZmVyZW5jZSBk
ZXNpZ24uCj4gPiBBbmQgaXQgYXBwZWFycyB0aGF0IHRoZSBQQ0llLVJDIHVzZWQgaW4gdGhhdCBy
ZWZlcmVuY2UgZGVzaWduIGRvZXMgbm90Cj4gPiBzdXBwb3J0IGFkZHJlc3MgdHJhbnNsYXRpb24u
Cj4KPiBJbmRlZWQsIHRoYXQncyBub3QgYW4gImludGVyZXN0aW5nIGFydGljbGUiLCBpdCdzIGp1
c3QgZG9jdW1lbnRhdGlvbiBmb3IKPiBzb21lIG90aGVyIHN5c3RlbSB0aGF0IGlzbid0IHRoaXMg
b25lLiBJbiBmYWN0IGl0J3MgYSBzeXN0ZW0gdGhhdAo+IHN0cmljdGx5IGRvZXNuJ3QgZXZlbiAq
aGF2ZSogUENJZTsgdGhlIHJlZmVyZW5jZSBkZXNpZ25zIGFyZSBub3QKPiBjb21wbGV0ZSBTb0Nz
LCBhbmQgYWxsIHRoYXQgaXMgYmVpbmcgZGVzY3JpYmVkIHRoZXJlIGlzIHRoZSBpbnRlcmNvbm5l
Y3QKPiBhZGRyZXNzIG1hcCBmb3IgdGhlIHBhcnRzIHdoaWNoIGFyZSBpbiBwbGFjZSByZWFkeSBm
b3IgYSBjdXN0b21lciB0bwo+IHN0aXRjaCB0aGVpciBjaG9pY2Ugb2YgUENJZSBpbXBsZW1lbnRh
dGlvbiB0by4KPgo+IFRoZSBlcXVpdmFsZW50IGZvciBSSzM1NjggaXMgdGhhdCB5b3UgKmRvKiBo
YXZlICJsb3ciIGFuZCAiaGlnaCIgUENJZQo+IHdpbmRvd3MgYXQgMHhmeDAwMDAwMCBhbmQgMHgz
eHh4MDAwMDAgcmVzcGVjdGl2ZWx5IGluIHRoZSBzeXN0ZW0KPiBpbnRlcmNvbm5lY3QgYWRkcmVz
cyBtYXAuIEhvdyB0aGUgUENJZSBjb250cm9sbGVycyBjaG9vc2UgdG8gcmVsYXRlCj4gdGhvc2Ug
c3lzdGVtIE1NSU8gYWRkcmVzc2VzIHRvIHRob3NlIHRvIFBDSSBNZW1vcnksIEkvTyBhbmQgQ29u
ZmlnIHNwYWNlCj4gYWRkcmVzc2VzIGlzIGFub3RoZXIgbWF0dGVyIGVudGlyZWx5LgoKVW5mb3J0
dW5hdGVseSB3ZSBhcmUgd29ya2luZyB3aXRoIGluc3VmZmljaWVudCBkb2N1bWVudGF0aW9uIGFu
ZAp3aXRob3V0IHRoZSBkZXRhaWxlZCB1bmRlcnN0YW5kaW5nIG9mIGEgc3lzdGVtIGludGVncmF0
b3IgaGVyZS4gSSdtCmZ1bGx5IGF3YXJlIHRoYXQgdGhlIE5lb3ZlcnNlIE4yIGlzIG5vdCB0aGUg
cmszNTY4LCBob3dldmVyCnNpZ25pZmljYW50IGNodW5rcyBvZiB0aGUgcmszNTY4IGFyZSBiYXNl
ZCBvbiBBUk0gSVAuIExvb2tpbmcgYXQgaG93CkFSTSBleHBlY3RzIHRoaW5ncyB0byB3b3JrIGJ5
IGNvbXBhcmluZyB0aGVpciByZWZlcmVuY2UgZG9jdW1lbnRzIHRvCnRoZSBoYXJkd2FyZSB3ZSBo
YXZlIG9uIGhhbmQgaXMgaGVscGZ1bCBpbiBkZXRlcm1pbmluZyB3aGF0IHdlIGFyZQpsYWNraW5n
LgoKVGhlIHNwZWNpZmljIHBvcnRpb25zIG9mIHRoZSBkb2N1bWVudGF0aW9uIHRoYXQgSSBmb3Vu
ZCB1c2VmdWwgYXJlIG5vdAp0aGUgbWVtb3J5IG1hcHMsIGJ1dCB0aGUgZ2VuZXJpYyBkZXNjcmlw
dGlvbnMgb2YgZXhwZWN0ZWQgUENJZQpyZWdpb25zLiBDb21iaW5pbmcgdGhvc2Ugd2l0aCBvdGhl
ciByZWZlcmVuY2UgZG9jdW1lbnRzICh1bmZvcnR1bmF0ZWx5Cm1vc3QgeDg2IGJhc2VkLCBidXQg
d2UgaGF2ZSB0aGUgdW5mb3J0dW5hdGUgcmVhbGl0eSB0aGF0IFBDSWUgaGFzIGEKbG90IG9mIHg4
NmlzbXMgdG8gZGVhbCB3aXRoKSBpcyBxdWl0ZSBlbmxpZ2h0ZW5pbmcuIEkndmUgYmVlbiBwaW5n
aW5nCnZhcmlvdXMgcmVwcmVzZW50YXRpdmVzIG9mIHRoZSBJUCBhbmQgaW1wbGVtZW50YXRpb24g
b24gdGhlIG1haWxpbmcKbGlzdCBhYm91dCB0aGVzZSBpc3N1ZXMgZm9yIGFib3V0IGEgeWVhciBu
b3cgd2l0aCBubyByZXNwb25zZXMgZnJvbQp0aGUgRGVzaWdud2FyZSBmb2xrLiBZb3UgaGF2ZSBi
ZWVuIHByZXR0eSBvbmUgb2YgdGhlIG9ubHkgaW5kaXZpZHVhbHMKd2l0aCB0aGUgbGV2ZWwgb2Yg
a25vd2xlZGdlIHdlIG5lZWQgdG8gcmVzcG9uZCBhbmQgSSB0aGFuayB5b3UgZm9yCnRoYXQuCgpC
YXNlZCBvbiB3aGF0IEkndmUgcmVhZCBJIHN1c3BlY3QgdGhhdCBhdCBsZWFzdCBvbmUgb2YgdGhl
IHR3bwpmb2xsb3dpbmcgc3RhdGVtZW50cyBpcyB0cnVlOgphLiBNYXJrIGlzIGNvcnJlY3QgdGhh
dCB0cmFuc2xhdGlvbiBpcyBicm9rZW4gaW4gUm9ja2NoaXAncwppbXBsZW1lbnRhdGlvbiAodW5r
bm93biBpZiB0aGlzIGlzIGEgU29DIG9yIGEgZHJpdmVyIGlzc3VlKQpiLiBXZSBkbyBpbiBmYWN0
IHJlcXVpcmUgSU8gYW5kIENvbmZpZyB0byBiZSAzMiBiaXQgYWRkcmVzc2FibGUgdG8gYmUKZnVs
bHkgY29tcGF0aWJsZS4KClRoZXNlIGlzc3VlcyBhcmUgY29tcG91bmRlZCBpbiByazM1ODggd2hl
cmUgd2UgaGF2ZSBtdWNoIHNtYWxsZXIKcmVnaW9ucyBpbiB0aGUgMzJiaXQgc3BhY2UgZm9yIFBD
SWUsIHNvIGEgZGVmaW5pdGUgYW5zd2VyIG9uIHRoZSB0cnVlCnJlcXVpcmVtZW50cyBhbmQgbGlt
aXRhdGlvbnMgd291bGQgYmUgcXVpdGUgaGVscGZ1bC4KCkFzIGFsd2F5cywgdGhhbmsgeW91IGZv
ciB5b3VyIHRpbWUsClBldGVyCgo+Cj4gUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
