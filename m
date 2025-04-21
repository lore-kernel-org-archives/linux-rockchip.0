Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CE7C369AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Apr 2025 14:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sJTpmbBVNq668ll1fSKPrgYBytQG7olOQV7ysgCqMc=; b=zpONSacC7qxqx8
	tgbzE0JeldBDOs4g23+qf9lT0EHePaRjJCdG2ornApqxsvfyoEfCZQgB3TUvk114lAvOddbioON6X
	3FQo6jDQch5YVsbgFn7l2kEtns1iyTnbhka/Bub/jDT2DPKcV1lgkCja41zG++njuLc0SCiFr9FKm
	XizlrNppzKSq0V+1GbRkTka2Pin7LKNivhgkoLKETP8RoWeLyvCZ2xDu23rKlOCSNDu8XrGwzbEcH
	q2yWup4MQb4LtgaxW6U++YaRw+Kog9ZV1lYPciBGgY6tq1G32PSe9MST0XJPTnitMKc01MuG7MyIM
	EEjqNZ1w2vk/dx2Fjzew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6sZG-00000004Vmv-1CbJ;
	Mon, 21 Apr 2025 14:56:18 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6sWS-00000004VQR-39Gj
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Apr 2025 14:53:25 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-223fb0f619dso45974275ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Apr 2025 07:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745247204; x=1745852004; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TNHDYvZ+kXQIgJtW4CpMeV/F9LD9o9x0KLwHdWA+41Y=;
        b=MOfPUB81EVbj7wcESb1cIXB6exUBWdWzTUeNiiRbP6flN1aJMsxj1ryy3GL2hz5X5t
         9/ffNhTOX10LvR8vRVxiT3v/fxGOz8/wdiNWdtOw8EExIshMlDngCQ1w0cv9hjTWgSHw
         4pxukccRXgz+/24xSBqk/Qw2fy0bye+VII302QNIEXtnhC5YPaAJkCV0c3PInuDC/cZO
         8KSSRNk9NRvwYY7U+2TsQQZ3XfNlsD0O7J34wM4/5MKs/P8+HMGr5QzRK2kWLwIgXYOf
         kz4VW9ABjX61nzSrC3vRtDOcLm70+N34/I1QEMxToZoaJqtZa7C4/7DHq63IhAxH1DXF
         uTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745247204; x=1745852004;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TNHDYvZ+kXQIgJtW4CpMeV/F9LD9o9x0KLwHdWA+41Y=;
        b=ndmv1/RfYD3dR14JLGRs9mrvWXBXs63BpDQczMolF3oX6jT/xUnd3IE3pipLL4yW+T
         4y31am/sZgRlmH0bXLRWEl4PlfZUL6TeNJ69dOI496d3AM6hyV47yfQkLZ6E7X+igAAt
         j2k2U+bzTDi/VPJCkXef5wW96lK1mymttXrfKzXWjtQgxqmkZy4XNCCrve2b9yyVdO66
         QViNl2Q7hwvo1BQIaiNFV8HZ6bsqh0Kb9G7LXrnqLL+Uzqwg0xtcA69/JB8fwkkU0/9k
         xN+/qhQhx4q4O8EOnkqnUa0rYjx7TkowIaMRLlYNfKPp7UDYlGgbILAqEHzmLWrZmqqF
         pAHA==
X-Forwarded-Encrypted: i=1; AJvYcCU4fTB55WohxsHE+CZq44uWLlGLAb0I4TQBQhA9a///e6p98//UNwSP7CgujvDB3CWQtQzgbNy3a1zE+97Fuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWLK6YfaTd3RsWb5ZKLBt1wrw9aYZ34fo97xm3nt2Rs57oYbE/
	IBnakt0AnZYyU/6PdPJqZQddWLzGdL/ZqQnBwtzVAQtLL7ClGoc/W2sG/YY5yQ==
X-Gm-Gg: ASbGncu4e49EgI6HVj9FiRn1V+ntkJ4gKkCr5D7swOFa9AV3GV4GaHMWszdrCqDNEM2
	j2f7LutkgBwZs1QbHWehxQWdZR43Z0gv/7hIiOhf6b5Tk2gWyxv3SdpKmL0Pv2/5lWCRcX6Y0q7
	sKddi1CWs0a5vrKbg6NctqoC4VBhmx1ipvOUyGqdJYLLZe6eMOSAUitoL6cIp+yzRksJzGY4PrF
	D0e4vbevKC17B0CXPdl/LnUlKrb8vNO3cgwRULBLD4tovl1kIOelS8iNWcXZLCh3UO1SkRDt46P
	wR3fTzeS8GIRkwqPFrT51UtKONp8Yw0/HVOB3dqMkwoSJmRNlHE2
X-Google-Smtp-Source: AGHT+IEFdCxUF0IGkc39Y6ivCpK40FOP5pObjbZbRz+JR102E0UDzHVcUjHWjvl2BLeEpo3bJDhIxA==
X-Received: by 2002:a17:903:228f:b0:223:653e:eb09 with SMTP id d9443c01a7336-22c5356e485mr145692145ad.7.1745247203811;
        Mon, 21 Apr 2025 07:53:23 -0700 (PDT)
Received: from thinkpad ([120.56.203.130])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50ecec61sm66006875ad.182.2025.04.21.07.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 07:53:23 -0700 (PDT)
Date: Mon, 21 Apr 2025 20:23:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hans Zhang <18255117159@163.com>
Cc: Niklas Cassel <cassel@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, 
	heiko@sntech.de, robh@kernel.org, jingoohan1@gmail.com, 
	thomas.richard@bootlin.com, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <vc6z6pzgk2sjgkghnwfzlmj3dblrvpkfnsmnlb2nnkj2leju7t@uxy3kthse7g6>
References: <20250417165219.GA115235@bhelgaas>
 <22720eef-f5a3-4e72-9c41-35335ec20f80@163.com>
 <225CC628-432C-4E88-AF2B-17C948B3790B@kernel.org>
 <8af8a418-b808-4a14-9969-1c6d549e1633@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8af8a418-b808-4a14-9969-1c6d549e1633@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_075324_781215_E33DB565 
X-CRM114-Status: GOOD (  30.76  )
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

T24gU2F0LCBBcHIgMTksIDIwMjUgYXQgMDE6MjE6NTRBTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiAKPiAKPiBPbiAyMDI1LzQvMTggMjI6NTUsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiAK
PiA+IAo+ID4gT24gMTggQXByaWwgMjAyNSAxNDozMzowOCBDRVNULCBIYW5zIFpoYW5nIDwxODI1
NTExNzE1OUAxNjMuY29tPiB3cm90ZToKPiA+ID4gCj4gPiA+IERlYXIgQmpvcm4sCj4gPiA+IAo+
ID4gPiBUaGFua3MgeW91ciBmb3IgcmVwbHkuIE5pa2xhcyBhbmQgSSBhdHRlbXB0ZWQgdG8gbW9k
aWZ5IHRoZSByZWxldmFudCBsb2dpYyBpbiBkcml2ZXJzL3BjaS9wcm9iZS5jIGFuZCBmb3VuZCB0
aGF0IHRoZXJlIHdhcyBhIGxvdCBvZiBjb2RlIGp1ZGdpbmcgdGhlIGdsb2JhbCB2YXJpYWJsZSBw
Y2llX2J1c19jb25maWcuIEF0IHByZXNlbnQsIHRoZXJlIGlzIG5vIGdvb2QgbWV0aG9kLiBJIHdp
bGwga2VlcCB0cnlpbmcuCj4gPiA+IAo+ID4gPiBJIHdvbmRlciBpZiB5b3UgaGF2ZSBhbnkgZ29v
ZCBzdWdnZXN0aW9ucz8gSXQgc2VlbXMgdGhhdCB0aGUgY29kZSBsb2dpYyByZWdhcmRpbmcgcGNp
ZV9idXNfY29uZmlnIGlzIGEgbGl0dGxlIGNvbXBsaWNhdGVkIGFuZCBjYW5ub3QgYmUgbW9kaWZp
ZWQgZm9yIHRoZSB0aW1lIGJlaW5nPwo+ID4gCj4gPiAKPiA+IEhhbnMsCj4gPiAKPiA+IElmOgo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvcHJvYmUuYyBiL2RyaXZlcnMvcGNpL3By
b2JlLmMKPiA+IGluZGV4IDM2NGZhMmE1MTRmOC4uMmUxYzkyZmRkNTc3IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9wY2kvcHJvYmUuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvcHJvYmUuYwo+ID4g
QEAgLTI5ODMsNiArMjk4MywxMyBAQCB2b2lkIHBjaWVfYnVzX2NvbmZpZ3VyZV9zZXR0aW5ncyhz
dHJ1Y3QgcGNpX2J1cyAqYnVzKQo+ID4gICAgICAgICAgIGlmICghcGNpX2lzX3BjaWUoYnVzLT5z
ZWxmKSkKPiA+ICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICAgICsgICAgICAgLyoKPiA+
ICsgICAgICAgICogU3RhcnQgb2ZmIHdpdGggRGV2Q3RsLk1QUyA9PSBEZXZDYXAuTVBTLCB1bmxl
c3MgUENJRV9CVVNfVFVORV9PRkYuCj4gPiArICAgICAgICAqIFRoaXMgbWlnaHQgZ2V0IG92ZXJy
aWRlbiBieSBhIE1QUyBzdHJhdGVneSBiZWxvdy4KPiA+ICsgICAgICAgICovCj4gPiArICAgICAg
IGlmIChwY2llX2J1c19jb25maWcgIT0gUENJRV9CVVNfVFVORV9PRkYpCj4gPiArICAgICAgICAg
ICAgICAgc21wc3MgPSBwY2llX2dldF9tcHMoYnVzLT5zZWxmKTsKPiA+ICsKPiAKPiBEZWFyIE5p
a2xhcywKPiAKPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5IGFuZCB0aG91Z2h0
cy4KPiAKPiBwY2llX2dldF9tcHM6IFJldHVybnMgbWF4aW11bSBwYXlsb2FkIHNpemUgaW4gYnl0
ZXMKPiAKPiBJIGd1ZXNzIHlvdSB3YW50IHRvIG9idGFpbiB0aGUgRGV2Q2FwIE1QUy4gQnV0IHRo
ZSBwdXJwb3NlIG9mIHRoZSBzbXBzcwo+IHZhcmlhYmxlIGlzIHRvIHNhdmUgdGhlIERldkN0bCBN
UFMuCj4gCj4gPiAgICAgICAgICAgLyoKPiA+ICAgICAgICAgICAgKiBGSVhNRSAtIFBlZXIgdG8g
cGVlciBETUEgaXMgcG9zc2libGUsIHRob3VnaCB0aGUgZW5kcG9pbnQgd291bGQgbmVlZAo+ID4g
ICAgICAgICAgICAqIHRvIGJlIGF3YXJlIG9mIHRoZSBNUFMgb2YgdGhlIGRlc3RpbmF0aW9uLiAg
VG8gd29yayBhcm91bmQgdGhpcywKPiA+IAo+ID4gCj4gPiAKPiA+IGRvZXMgbm90IHdvcmssIGNh
bid0IHlvdSBtb2RpZnkgdGhlIGNvZGUgc2xpZ2h0bHkgc28gdGhhdCBpdCB3b3Jrcz8KPiA+IAo+
ID4gSSBoYXZlbid0IHRyaWVkIG15c2VsZiwgYnV0IGNvbnNpZGVyaW5nIHRoYXQgaXQgd29ya3Mg
d2hlbiB3YWxraW5nIHRoZSBidXMsIGl0IHNlZW1zIHRoYXQgaXQgc2hvdWxkIGJlIHBvc3NpYmxl
IHRvIGdldCBzb21ldGhpbmcgd29ya2luZy4KPiA+IAo+IAo+IAo+IEFmdGVyIG1ha2luZyB0aGUg
Zm9sbG93aW5nIG1vZGlmaWNhdGlvbnMsIG15IHRlc3Qgc2hvd3MgdGhhdCBpdCBpcyBub3JtYWwu
Cj4gSWYgdGhlIGNvbnNpZGVyYXRpb24gaXMgbm90IGNvbXByZWhlbnNpdmUuIENvdWxkIEJqb3Ju
IGFuZCBOaWtsYXMgcGxlYXNlCj4gcmV2aWV3IG15IHJldmlzaW9ucz8KPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvcHJvYmUuYyBiL2RyaXZlcnMvcGNpL3Byb2JlLmMKPiBpbmRleCAzNjRm
YTJhNTE0ZjguLjViNTRmMWIwYTkxZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9wcm9iZS5j
Cj4gKysrIGIvZHJpdmVycy9wY2kvcHJvYmUuYwo+IEBAIC0yOTUxLDggKzI5NTEsNyBAQCBzdGF0
aWMgaW50IHBjaWVfYnVzX2NvbmZpZ3VyZV9zZXQoc3RydWN0IHBjaV9kZXYgKmRldiwKPiB2b2lk
ICpkYXRhKQo+ICAgICAgICAgaWYgKCFwY2lfaXNfcGNpZShkZXYpKQo+ICAgICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiAKPiAtICAgICAgIGlmIChwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNf
VFVORV9PRkYgfHwKPiAtICAgICAgICAgICBwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNfREVG
QVVMVCkKPiArICAgICAgIGlmIChwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNfVFVORV9PRkYp
Cj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+IAo+ICAgICAgICAgbXBzID0gMTI4IDw8ICoo
dTggKilkYXRhOwo+IEBAIC0yOTkxLDcgKzI5OTAsOCBAQCB2b2lkIHBjaWVfYnVzX2NvbmZpZ3Vy
ZV9zZXR0aW5ncyhzdHJ1Y3QgcGNpX2J1cyAqYnVzKQo+ICAgICAgICAgaWYgKHBjaWVfYnVzX2Nv
bmZpZyA9PSBQQ0lFX0JVU19QRUVSMlBFRVIpCj4gICAgICAgICAgICAgICAgIHNtcHNzID0gMDsK
PiAKPiAtICAgICAgIGlmIChwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNfU0FGRSkgewo+ICsg
ICAgICAgaWYgKChwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNfU0FGRSkgfHwKPiArICAgICAg
ICAgICAocGNpZV9idXNfY29uZmlnICE9IFBDSUVfQlVTX1RVTkVfT0ZGKSkgewo+ICAgICAgICAg
ICAgICAgICBzbXBzcyA9IGJ1cy0+c2VsZi0+cGNpZV9tcHNzOwo+IAo+ICAgICAgICAgICAgICAg
ICBwY2llX2ZpbmRfc21wc3MoYnVzLT5zZWxmLCAmc21wc3MpOwo+IAo+IAoKQXMgSSByZXBsaWVk
IHRvIE5pa2xhcywgSSdkIGxpa2UgdG8gbGltaXQgdGhlIGNoYW5nZXMgdG8gcGxhdGZvcm1zIGhh
dmluZwpjb250cm9sbGVyIGRyaXZlcnMuIFNvIGhlcmUgaXMgbXkgcHJvcG9zYWw6CgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wY2kvcHJvYmUuYyBiL2RyaXZlcnMvcGNpL3Byb2JlLmMKaW5kZXggMzY0
ZmEyYTUxNGY4Li5kMzJhMGY5MGJlYjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3Byb2JlLmMK
KysrIGIvZHJpdmVycy9wY2kvcHJvYmUuYwpAQCAtMzIyOCw2ICszMjI4LDE3IEBAIGludCBwY2lf
aG9zdF9wcm9iZShzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdlICpicmlkZ2UpCiAgICAgICAgICovCiAg
ICAgICAgcGNpX2Fzc2lnbl91bmFzc2lnbmVkX3Jvb3RfYnVzX3Jlc291cmNlcyhidXMpOwogCisg
ICAgICAgaWYgKHBjaWVfYnVzX2NvbmZpZyAhPSBQQ0lFX0JVU19UVU5FX09GRikgeworICAgICAg
ICAgICAgICAgLyogQ29uZmlndXJlIHJvb3QgcG9ydHMgTVBTIHRvIGJlIE1QU1MgYnkgZGVmYXVs
dCAqLworICAgICAgICAgICAgICAgZm9yX2VhY2hfcGNpX2JyaWRnZShkZXYsIGJ1cykgeworICAg
ICAgICAgICAgICAgICAgICAgICBpZiAocGNpX3BjaWVfdHlwZShkZXYpICE9IFBDSV9FWFBfVFlQ
RV9ST09UX1BPUlQpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7CisK
KyAgICAgICAgICAgICAgICAgICAgICAgcGNpZV93cml0ZV9tcHMoZGV2LCAxMjggPDwgZGV2LT5w
Y2llX21wc3MpOworICAgICAgICAgICAgICAgICAgICAgICBwY2llX3dyaXRlX21ycnMoZGV2KTsK
KyAgICAgICAgICAgICAgIH0KKyAgICAgICB9CisKICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5
KGNoaWxkLCAmYnVzLT5jaGlsZHJlbiwgbm9kZSkKICAgICAgICAgICAgICAgIHBjaWVfYnVzX2Nv
bmZpZ3VyZV9zZXR0aW5ncyhjaGlsZCk7CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
