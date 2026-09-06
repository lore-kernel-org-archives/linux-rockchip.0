Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC180C79F99
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2026 06:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSooCQoWczCBzYYcBEtJCuszafjBV3/YVctj0pUfWks=; b=BVSdxeeOJI3j2G
	l/DXPwOHi2U6h1I18XjoruqyJ3iYGfp0S89BEEfW9yqIBhOipoqjJ6OseRxew1GNgY9o1MbTkwRNB
	CJIbOuLCBky15Y0NKFMaxEnU448VCYwKJH3vB4SAXqD7LM0vTO3uLKpIKc4tNOJjOVMGhJQGkUNOc
	pvywFcYHuMr5RHVeGJA9URYKHtohy9LHuTYi1mUrBYtMH4Jy+o34ob+F1FnnbR+bKbULiDDiXRaL3
	zqjmEHAV3r8C0S/MLWn2x/XlsF9KjeqZQga0lh0IgkXmFC9cZHhZbEQdmxDan5A37zlOErBgvb67t
	uRNqOItNaz/4CT2gbcWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x363y-00000004jjt-1ZRs;
	Sun, 06 Sep 2026 06:09:10 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x363w-00000004jjE-1C1l
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Sep 2026 06:09:09 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-6b92a58cb7eso247859eaf.2
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 23:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788674945; cv=none;
        d=google.com; s=arc-20260327;
        b=iU6WSu+ntmcIJHE2EprUnj+6o3YX4lbNh5lDPoV1IWVhPob+ID47+JeTo1qw5SZogX
         mrLv12Pa2yazXCl8ZlJ04Fdlv8NwrLsnEERUj/i4qMdPx9LklwygNUbGbvay15Av42ym
         9rI24vcpsZRvR/tcFy0e45Ei3FfFB7R0eTmqNNhx4MoKEpDkj0c/cx/wk4P2pIwnqjNK
         LoR/1dGdeH3NZrb/53z6CH3NWzCI2isS0lw961SYNOMfvDrL38wprvgUdpuUBkSvm3IP
         wGqZlbGb7J7L4GvlqLtwnThoqXlzq6zPIZ4nSebip8nj0V+UoMG7HjV9JM+NvLomSGnj
         HthA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vdC57ddqvGP0W5KwBTBkhOYJWRkgqf1DhL7jKk6+43U=;
        fh=3cNHNgF1xBNNSqtD4YUEAPE7lM2jyzKPJ/YdOSu7hvE=;
        b=mlljWepo7h/qWIHD2/9g9l7pZLlhfgw2a1WQsmWY8HDERdnX4TXZusvcALaWMVTDdM
         J6hOW7XCEYV7VfpOrXDzb2OtLY9w+xsto8S4c4flMBm1whEvUN3yaAHWP91i3H2ZCuVJ
         z2roas7PeURDOa6BBcVbffMxK4yN4JLu+4102EeGuPy+hiacYwprLSO5ClpaEEzS5bRo
         LFZiiIQOXvjpm/r4JvZXyuoYJqedjwqhOOD/U/EW3yONSy6Ad0eTlSu8V3TVrX4WT8/n
         zUwelUvDD1OO52u3B9vrf+dtt4hB34Fo9cggqLTH8cAxb6BpMob7JnyCxHTw1zeuAU3i
         ik0g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788674945; x=1789279745; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vdC57ddqvGP0W5KwBTBkhOYJWRkgqf1DhL7jKk6+43U=;
        b=TYI98P6C/58q8hS6rHd2d5vDMzWab58jk4fxEcI0Ne0kvgT4PhVyUt8AhGgmV/J2Cg
         8FXhIvEHzr0HhlBCkXFW0ExyafoFwDSOCWxFCkVvy5sTPgSWcsID1lkQkqiOsW/d+X2b
         VLHwNko9SZWFapNOyI6+6UVpDMY8UPdFmJrHyACeXfhc7yIhi+HML1C5fGJWdDjLj1SK
         GQc3i1YHp+vlqWcG+aEJ73PxuYD1jgMYd3xNDTNG2t4YfEo0VdSIKnpyGXNx4SL1rNdd
         tLPprFxqB07v8dXCt/dgCuvHtZcykJ9ElxSKTMuXGQRhYp85Gdl/3TMGxrj9K/fdr8X8
         Acvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788674945; x=1789279745;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vdC57ddqvGP0W5KwBTBkhOYJWRkgqf1DhL7jKk6+43U=;
        b=Oby+O9vjqGk1TH50xO7hGnc4yO6l3XBmP5/RO+KKyawYXm39iyoseJfRSHlUHiA/Pv
         KBlkcieBWdidkBoxqqNuLJUvAON8d7AhiP4Rf5af2BcM2IpLrUk+wx2sH+YTZCe3sqKa
         PBo/xETR1MDTuCDw+BeuQEDG/rK3wAQ4t6Ut2UnklUkYNvTd+D6hUP+Lv3mBf0X6biEr
         t0TnvqeTyprJ2/RLNZWRYZx+iQVSF3578YJVfCmMdvOrBWdcSapED5EwHUFrx87ab8+D
         c7povrqQWBEC6Ggp0BFYNrT8HICPn4/26ybJE3gTY2yEDmKWq6fyQVRN+tFkMvDiYmnq
         TaRg==
X-Forwarded-Encrypted: i=1; AKwUvBz0Hg9oI6W0EWhyUUgZlzwQqVD98rID/1PYsjG7e1h/WVerjotxNpKl2+k3tlMwLLDQJHZduobk2u+FLjdrrQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mjZbAvaTNeq1RvtGWX1mvqyH6ficNU51Ru3suKA6WGZVVf5OvE
	m2dQnpmYnedzqBXt0td6s7WhXEjhX/05XHEKltk1o0Yi/xdbvmGRc5H9VK940oAk39mCBdPoREh
	tbfL/JtdimvVjHzxnZruEmFCtptVPjeo=
X-Gm-Gg: AYBFou1jm5balR/T8QLN8h3SNipz0aJSanUqvRqaClX0kl56b3xywRCQUVKCgi1zcy1
	pApA0yEwdcRjnF6M6NiA2l4JGZchvO/rL1zkUKbj0X/T4Oh96BMpe18ouwXaFjaowG9rew5OBH0
	LPP2/XXSBG5wF9jdQN48eSWon5TkXaQmq2e+2I7JrVBGoPabtP47hXzWyeApavmdpU2lvZIlAE/
	R4VUFXi3cQonVOsCm5+7+trfmcr8lBFtoXhBq1w1lSrj09dnjZiEChJNbThl3OU1YNZBDPAKyMh
	ZqSDqUAxd8Pvkh9kZBs5sNfI9qlw8sMc3L613Ki63lMVjURx/hXMag==
X-Received: by 2002:a05:6820:1787:b0:6b7:8396:f3ce with SMTP id
 006d021491bc7-6b78396f87bmr7383804eaf.48.1788674945534; Sat, 05 Sep 2026
 23:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com> <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
 <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com> <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com>
In-Reply-To: <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sat, 5 Sep 2026 23:08:39 -0700
X-Gm-Features: AcwNN1XV6eaC-hb5tnT2MKyn0nOE60V4HfLSORk_N-jEL_PXVgmbyJgM3d_DMic
Message-ID: <CA+E=qVcwtnU_Gg6_oFmWqMpCEF8vOvB_G+H-ihfbiAr0PpFUJw@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
To: Alexey Charkov <alchark@flipper.net>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_230908_328402_35E24D7D 
X-CRM114-Status: GOOD (  21.18  )
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

T24gRnJpLCBTZXAgNCwgMjAyNiBhdCAyOjM24oCvQU0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
ZmxpcHBlci5uZXQ+IHdyb3RlOgoKPiA+IFNlZSBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1iYXNlLmR0c2ksIGhkbWkgcmVmIGNsb2NrIGlzCj4gPiB3aXJlZCBkaXJlY3RseSB0
byBWUExMLCBhbmQgZHdfaGRtaS1yb2NrY2hpcCBjYWxscyBjbGtfc2V0X3JhdGUoKSB3aXRoCj4g
PiBwaXhlbCBjbG9jayBmb3IgcmVmIGNsb2NrLCBzZWUKPiA+IGR3X2hkbWlfcm9ja2NoaXBfZW5j
b2Rlcl9hdG9taWNfbW9kZV9zZXQoKS4gU28gYXQgbGVhc3QgaW4gdGhlIHJrMzM5OQo+ID4gY2Fz
ZSBWUExMIGlzIHN1cHBvc2VkIHRvIHN1cHBvcnQgdGhlIHJlcXVpcmVkIHBpeGVsIGNsb2NrLiBX
aXRob3V0IHRoZQo+ID4gZmlyc3QgcGF0Y2ggMTM2Nng3NjggbW9kZSB3aXRoIDg1LjVNSHogcGl4
ZWwgY2xvY2sgaXMganVzdCByZWplY3RlZC4KPgo+IEkgc3Ryb25nbHkgc3VzcGVjdCB0aGF0IHRo
ZSBkdHNpIGRvZXNuJ3QgZGVzY3JpYmUgdGhlIHJlYWwgY2xvY2sgdXNhZ2UKPiBoZXJlLiBUaGUg
VFJNIGZvciBSSzMzOTkgZG9lc24ndCBzaG93IGFueSAicmVmIiBjbG9jayBmb3IgSERNSSwgYW5k
IG5vCj4gVFJNLWRvY3VtZW50ZWQgVlBMTCB1c2VycyBsb29rIGxpa2UgYW55dGhpbmcgdGhhdCBj
b3VsZCBjb25uZWN0Cj4gZGlyZWN0bHkgdG8gdGhlIEhETUkgY29udHJvbGxlci4KClNlZSAiMS4x
LjExIEhETUkgSW50ZXJmYWNlIiwgaXQgZXhwbGljaXRseSBtZW50aW9ucyAxMy414oCTNjAwTUh6
IGlucHV0CnJlZmVyZW5jZSBjbG9jawoKPiBJIGJlbGlldmUgc29tZXRoaW5nIGlzIGhhcmRjb2Rp
bmcgdGhlIGRpdmlzb3IgKG9yIGxlYXZpbmcgaXQgYXQgdGhlCj4gcG93ZXItb24gZGVmYXVsdCkg
aW4gdGhlIGFjdHVhbCBEQ0xLIG9mIGEgVk9QIHdoaWNoIHRoZSBIRE1JCj4gY29udHJvbGxlciB1
c2VzLCBpbnN0ZWFkIG9mIG1vZGVsbGluZyBpdCBwcm9wZXJseSBhcyBhIG11eCAoZnJhYy9kaXYp
Cj4gZmVlZGluZyBvZmYgVlBMTCB2aWEgYW5vdGhlciBtdXggLSBib3RoIHBlcmZlY3RseSByZXBy
ZXNlbnRhYmxlIGluIHRoZQo+IGNsb2NrIGZyYW1ld29yayBhbmQgYWxyZWFkeSBlbnZpc2FnZWQg
aW4gdGhlIGNsb2NrIGRyaXZlciwgbWFraW5nIHRoZQo+IFBMTCB0YWJsZSBwYXRjaGluZyB1bm5l
Y2Vzc2FyeS4KPgo+IENhbiB5b3UgcGxlYXNlIHRyeSByZS1wb2ludGluZyB0aGUgInJlZiIgY2xv
Y2sgYXQgRENMS19WT1AwIChvciAxLAo+IGRlcGVuZGluZyBvbiB3aGljaCBvbmUgeW91ciBIRE1J
IGNvbnRyb2xsZXIgdXNlcyk/IFlvdXIgY2xvY2sgc3VtbWFyeQo+IGFscmVhZHkgc2hvd3MgdGhh
dCBzb21ldGhpbmcgaXMgYXNzaWduaW5nIGl0cyBwYXJlbnQgdG8gRENMS19WT1B4X0RJVgo+IGFu
ZCB0aGUgbGF0dGVyJ3MgcGFyZW50IHRvIFBMTF9WUExMLCBzbyByYXRlIGNoYW5nZXMgdGhlIGN1
cnJlbnQKPiBkcml2ZXIgY29kZSBkb2VzIG9uIFZQTEwgcHJvcGFnYXRlIHRvIHRoZSBtdXhlZCBh
bmQgZGl2aWRlZCBkb3duc3RyZWFtCj4gY29uc3VtZXIgYXMgYSBzaWRlLWVmZmVjdCByYXRoZXIg
dGhhbiBhcyBhbiBhY3R1YWwgcmF0ZSByZXF1ZXN0LgoKSSBkb24ndCB0aGluayBpdCBpcyBhIHJl
YXNvbmFibGUgYXNrLiBXcm9uZyBjbG9jayBmb3IgdGhlIEhETUkgZW5jb2Rlcgp3b3VsZCBqdXN0
IHJlc3VsdCBpbiBub24td29ya2luZyBIRE1JIG91dHB1dCBhbmQgbm8gZmVhc2libGUgd2F5IGZv
cgptZSB0byBkZWJ1ZyB3aGF0IGlzIHdyb25nLgoKUmVnYXJkcywKVmFzaWx5CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
