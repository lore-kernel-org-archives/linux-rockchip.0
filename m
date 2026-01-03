Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD61FA3750
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTQ67CGi15f+/8D7AItNNk6bZOH87rjpsuogt7E3bvc=; b=2HxGVY5RGfMkDB
	e9yYwknWW7nID3VGIpymElFJWqc7i/KPRqjxrm++1bpGBwiO8V5YtI1AF+G1NXAg0Hw+zZw07YzGt
	lJAERKkLcjoUKDSKPYLXXo8x37Uecjo05CeFzcawrVDJ9OGmg5H18EN1LR1VJgi9Kwl/DCTUQrJbS
	rGe3mvhb78KQodSaawFZ91gJXOQC4S5dpa7y25bJ4EnsPiD7IbEfaRfh8XNAytgeN2zlJ3kGL0o7u
	wWgm1ZWkpsRYxYSGQaxpvC3f+k2gJCIE/4WP5gsmiGY63bmELQM+Kb601BBN/mxX+bpJl9DN9DqhB
	vO/4sCrRILR5urxVKFQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc0Fd-00000009Kvv-2Wcn;
	Sat, 03 Jan 2026 11:56:57 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vc0Fa-00000009Kv6-3qKc
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 11:56:56 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-64d80a47491so1342855a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Jan 2026 03:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767441413; x=1768046213; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmnAKAfv29ulmMb0BC0UKs0MVt+IkK2zMRYsdR6rhaE=;
        b=SPiPNadf66kJfrnPFE2V3qjm5DTW3Jua9WbbxBs35oTU0QWzLjmvXlUzhoW2+jxRQb
         hZfSG+yjPPbXalW7FRiwICp/6eHycXb51dmjLiKxs9qwEzPbrC/96KRSV1+sgYcSHBNn
         LaequKQurdS8kNC5hIebSbYiCIV22jxKj5pK2pBlp+qUXgalCik7s0UqR2iE6n2fhZIe
         bZwV+jEOK0bgToK6ztf+5I5ulWZf2fKDwIx4M4EJk6xq0V4hVSTFLpR3dbFRT62y/k+p
         fjnInigklixCQ50NUBw9dNB4jr8Kb5qeeWb2jdWHtA51T9V62R2F/v0wWPM9QAI3O9A4
         vrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767441413; x=1768046213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gmnAKAfv29ulmMb0BC0UKs0MVt+IkK2zMRYsdR6rhaE=;
        b=o+LM4humHN7VBpoXHp2kh1G4nX26GhiQah0uKzrzJg3K6In56G/4D/TMhvjcURYakp
         TdakLLAo0FcMQ2Vv+OZmQLjsF9nAd5krhM+xhZitPX5Venx+CuQRu1Gc1+p6/AzmavSw
         DHTCV8fAwswdFWUYPZjX0KLT+BqwUBHlXKGaMu86zTGcXrlJsixK3o9DQgegCH61xVU5
         JZLVAOEJOa+q4vyITRN8JGPlyqIZxktt4L7XMVv/DL/v/cGV4ZfR+IFgoeXjX1ZfA22r
         JIgHsWWVK3OKabQklhTjCjEXVgDWQoV7Zoo+YcaMtJ5Gg12RtfBeFIWs7pKLlIMBw9Y+
         iRZw==
X-Forwarded-Encrypted: i=1; AJvYcCVIbm3Fdy5O1rY10v1oVVkoj1dhzxCGNahyzB3OxDTAxOypcipv1UIY7jd5TOnaNBytkV0ZhwpprDm81dxb8A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyn2mis+t06+/XgKYkiEpfBnLlYocapwFWO4df1hGG5OBFW6PuX
	pDDDxZquvUOiOOl7LKkH+Kmdhd8Zz1orrlGbwegmIZxgUzXfS64j/y5z2Zt1q5sFKWCa3K+a65a
	lV9tFQy9QAPGa6/QuBYWCQoOy8mR51ko=
X-Gm-Gg: AY/fxX6hiS1J0bgjOaxQiDqhe7Q3VyFoq9vNohwkXMhpnQ7WL0jScsV5b8WUzYraoC6
	cgy41s6giTqKMafr67QC51cn/mLZ0km/G2jA4qhriTBA8vGIV8x2QxTrder5tOqLYVTT8vsUKH6
	HTllfWwukwr1zAimLo5C7kw+mNNpL5RX8ZhDcFNzFd3GJCVpbGfYD3g2Qvxsy6IuJ/+rK+RGP73
	5qGc9dVZQX3VrlZHl9V9BQ3IqbLdIkq/ecCJKslxXdU34d36tYv0RkDBfBli4tIr/E=
X-Google-Smtp-Source: AGHT+IF2b3MvhL62iZeikJ+ttx+pza0Q8AuLmmDSQvLMMwKTmV2H/BFIvhu8dzQh+T0cfdAPWyIo8+97JC3VbvgZOtQ=
X-Received: by 2002:a05:6402:2750:b0:64d:4149:4924 with SMTP id
 4fb4d7f45d1cf-64fd4929c52mr2235323a12.4.1767441412727; Sat, 03 Jan 2026
 03:56:52 -0800 (PST)
MIME-Version: 1.0
References: <20260103052506.6743-1-linux.amoon@gmail.com> <1802774.yIU609i1g2@diego>
In-Reply-To: <1802774.yIU609i1g2@diego>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 3 Jan 2026 17:26:37 +0530
X-Gm-Features: AQt7F2ro1kfUI7JqsGT_zw2XVqyjk2_hY7-ZX3rtcNoyAWEVImrlYTmVULYv9uo
Message-ID: <CANAwSgR5RxmeUA-XdTCD5tr9SjPt4EqdH0W305tzsgh+73F7bw@mail.gmail.com>
Subject: Re: [PATCH v1] i2c: rk3x: Add support for SCL output enable debounce
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_035654_996089_4186CD90 
X-CRM114-Status: GOOD (  17.50  )
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

SGkgSGVpa28sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnQuCgpPbiBTYXQsIDMgSmFu
IDIwMjYgYXQgMTY6MDksIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+
Cj4gQW0gU2Ftc3RhZywgMy4gSmFudWFyIDIwMjYsIDA2OjI1OjA0IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQW5hbmQgTW9vbjoKPiA+IEZyb206IERhdmlkIFd1IDxkYXZp
ZC53dUByb2NrLWNoaXBzLmNvbT4KPiA+Cj4gPiBBcyBwZXIgdGhlIFJLMzM5OSBhbmQgUkszNTg4
IGRhdGFzaGVldHMgUm9ja2NoaXAgSTJDIGNvbnRyb2xsZXJzIGZlYXR1cmUKPiA+IGEgU0NMX09F
X0RCIHJlZ2lzdGVyICgweDI0KS4gVGhpcyByZWdpc3RlciBpcyB1c2VkIHRvIGNvbmZpZ3VyZSB0
aGUKPiA+IGRlYm91bmNlIHRpbWUgZm9yIHRoZSBTQ0wgb3V0cHV0IGVuYWJsZSBzaWduYWwsIHdo
aWNoIGhlbHBzIHByZXZlbnQKPiA+IGdsaXRjaGVzIGFuZCBlbnN1cmVzIHRpbWluZyBjb21wbGlh
bmNlIGR1cmluZyBidXMgaGFuZG92ZXIgb3Igc2xhdmUgY2xvY2sKPiA+IHN0cmV0Y2hpbmcuCj4g
Pgo+ID4gSW50cm9kdWNlIGEgJ2hhc19zY2xfb2VfZGVib3VuY2UnIGZsYWcgdG8gcmszeF9pMmNf
c29jX2RhdGEgdG8KPiA+IGRpc3Rpbmd1aXNoIGJldHdlZW4gaGFyZHdhcmUgdmVyc2lvbnMuIEZv
ciBzdXBwb3J0ZWQgU29DcywgY2FsY3VsYXRlCj4gPiB0aGUgZGVib3VuY2UgY291bnRlciBkeW5h
bWljYWxseSBiYXNlZCBvbiB0aGUgY3VycmVudCBjbG9jayByYXRlCj4gPiBhbmQgcHJvZ3JhbSBp
dCBkdXJpbmcgZGl2aWRlciBhZGFwdGF0aW9uLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5k
IE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFd1
IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KPgo+IFNpZ25lZC1vZmYtYnkgbGluZXMgYXJlIGlu
IHRoZSB3cm9uZyBvcmRlci4KPgo+IE9yaWdpbmFsIGF1dGhvciBmaXJzdCwgdGhlbiB5b3VycyBh
cyB5b3UncmUgdGhlIG9uZSBoYW5kbGluZwo+IHRoZSBwYXRjaCBsYXN0Lgo+Ck9rLCBJIHdpbGwg
Zml4IHRoaXMgaW4gdGhlIG5leHQgdmVyc2lvbiwgd2l0aCBhIG5ldyBmZWVkYmFjaywKPgo+IEFs
c28sIGRvZXMgdGhpcyBmaXggYSBwcm9ibGVtIGZvciB5b3UsIG9yIGlzIHRoaXMgbW9yZSBhIGNh
c2Ugb2YKPiAidGhpcyBsb29rcyB1c2VmdWwiPwo+CkFjdHVhbGx5LCBJIGFtIGludmVzdGlnYXRp
bmcgYSBib290IHJlc2V0IGlzc3VlIG9uIHRoZSBSYWR4YSBSb2NrIDVCLApTcGVjaWZpY2FsbHkg
cmVsYXRlZCB0byB0aGUgZnVzYjMwMiBUeXBlLUMgZHJpdmVyLiBTbyBJIHdhcyBsb29raW5nIGZv
cgp0eXBlLWMgZnVzYjMwMiBtb2R1bGUgdG8gY29tbXVuaWNhdGUgd2l0aCB0aGUgSTJDIHByb3Rv
Y29sLgpJIHN1Ym1pdHRlZCBzbWFsbCBjaGFuZ2VzIGZvciB0aGlzLCB3YWl0aW5nIGZvciBmZWVk
YmFjawoKPiBUaGFua3MKPiBIZWlrbwoKVGhhbmtzCi1BbmFuZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
