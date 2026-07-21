Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE16CC4452B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 05:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmtnoNMwpbXwbzq7r1YFcwP3IIrHDsmuRh63HoE+090=; b=HFLtZ6zWDoL4jF
	GaWhY3vbB5wKSrrZh1QFyNGnIhjSg658d3VilnbZigSoQp6+b1C+ER7cNlvipQgN8+oy0IGmIpIe7
	6UO7Dw/HviAz/b3MPZ+D57SCiqU/KWEGWXriTXnVEuELh2tVnT5O14Ag+0WNkLlAPNW9T72zZFgbY
	8+ExJx4CiL8B+FZ64tdZ71nK44Jv4OEZhwrA4MlCSnkP+3nXv5ozYP2LNZogyj0GkpP4llKHjrVgF
	OEs3sIMDbdS+Dbw++XZDUc+ISX2nTU9I1/HpwTlFz+CZUQhWFToeMEtYWT5s8H9j2lOt6vzLOYfrE
	JKg/3O4LAzVUTS79EsGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm34l-00000008SKU-0TBI;
	Tue, 21 Jul 2026 05:31:31 +0000
Received: from mail-yx1-xb12f.google.com ([2607:f8b0:4864:20::b12f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm34g-00000008SHA-02FB
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 05:31:29 +0000
Received: by mail-yx1-xb12f.google.com with SMTP id 956f58d0204a3-66787b93a0aso1235541d50.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 22:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784611885; cv=none;
        d=google.com; s=arc-20260327;
        b=Q4sBAVu8qg0h5Vla7Qk0UAHRAPQMNyyxuHMtb2NoCNlaYRV/rtuuyS8Yy2gVnG7WfQ
         oFgxIZDsacdeydYq1nEUhsxgLRC831Fu3DejRxZNYX7pyPquJiCzmQgN8kllONb/j+N7
         iyRnlJiR3BNEf8tKByvQjqRb8bz/GVFVKzhGmC61MPVwHUyXdApUBHcdSdztL5JcE/0g
         0iil0i0EFIECWToeHNwZjuNJHOwYVk5K6mH6McYJW23WbUPqUQAE5BQT6/pzXclpJJjc
         1vJJk4D9WCrMh/nAID8wJFvLvFtW/gobqgq/nCw+uoVY6A/rHdSqt8kXrxi6JtqRZFyf
         6jYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2TB196GaR66SwyFsnNzabKS/+vodO/WvG61qZe4uFOY=;
        fh=kAzy72i2dxcv5ZXkKfztmQqNLdBJQkO/RGZo9TQWa7g=;
        b=XP/CfZGJpWYTDqON/IH3duRTUHG5LU6m4kzhXb1QwsAoyyuo3fckCUaGTZnnsIPwXd
         vUhzGeBuBv2Oe1YmgUJhFgCPtldhdZqRBRFaJrIzbC7h0W3hqG0lU/nVLs5GbXDw+5Ea
         XLqSTFGx18KLsjoFAYbcxIgO0Z/5vnR8smDEsHe8ujrMR6xM7Y1yqmlON/IOllrKXqWM
         GRxUEHtUjhfgXcLN+jl8ZEYIi4I2qCEETC+poEWH6DB46dUmqZdScfKH4iXzxrDtt3++
         tVwppNgSiOInud0lZClsj0iL5Uj/unqRe2FG293NgzbCcTje/37yluGJ2ICx/Nv1xZe3
         cumw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784611885; x=1785216685; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2TB196GaR66SwyFsnNzabKS/+vodO/WvG61qZe4uFOY=;
        b=lnINvsapdSTyI/P8w5EIZnYndNRP3Vik+hmKc0f2D6P4DDofwYCT23DzELI5Oi1d3O
         xWqWD/fnQfBASyMZN7Mc/raJZ+yZkGFdaUQCXLOIVrt3I8CyvWvMDt0I5MYwR4WMfW7k
         mySyBIUEkoJx3/taTz6Y7svIlwRRNwcvp9bPCN3Wfv2XYYjYcq6EcbHUlTkG8BFaGFPg
         Yad0/9Eu0UX/n+8+z9GYuwC6p6bDy9xgQbrAH6Aa8VRI36ylH5okvymE9/8ZO+gY6Kzf
         TRfRxMxiZf8ivfGc7/NJKAwga7rF4F1SGI5tqdu9yaLxyAPFd+4qeHLU9S5VcsXoTEae
         YKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784611885; x=1785216685;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2TB196GaR66SwyFsnNzabKS/+vodO/WvG61qZe4uFOY=;
        b=jDJ1zuR6vUwRnfT7Gpr82rqstgxWHWB3QEVTL6HBOhvIE49QY8QhLIl3Q6Cs5Bv1nf
         ZNra881awDlg7OvtxmmAuPQ6oaYJSXYvUN4WfphWf5+os17JUoXK1x9Oqs8jDjttImHi
         dwWOY2Pbd2oh+aCW9ZhSbBVNJHIj8NFejzErycbAW1GjrBKH+wmcAgGdoJ+aMJUSO0Mz
         B5AFe7wN+AvkCrFEBvxH8VdrrhZgnLxa77qrxbKdAMCXy1tqgK87T5ru0OaYK7+Aaq0L
         rezyIzY21BTJTdTU99zfnhzUc/Xy1KR/J54fcboos60cXhU4Fp54ehVpbM3WtoZY7Af5
         ZRWg==
X-Forwarded-Encrypted: i=1; AHgh+RrdzfS3OUigVhdOOaViJj6L8rh0nrPqPNRU1NJ7RcUXvID+mBVEQCtXdw/pPOn50vrHY7GNL0NUWtg+RjQLhQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJbPcCSCbOuV1S4lC1+HKwIWey9ZRcvX860VniY8gFxvOlO3/G
	OHGuDYSfGZq8b2HA/b/8zBQ2fFGKwwOx8PSTZsDxn9F/N9/P2+RayVA86xH1LcagkKkPUBzayZd
	z5+HB8l78SY5OPwn/Det2WNJBOHB+ooQ=
X-Gm-Gg: AR+sD122HQjkyW3RX6V44RBf1etVsogUiKItMhUKfqOiI1DtrDxn7Obrecx1wks/1kJ
	ifJhySYkl03OuNd7hdCV4rnkClXowPxT64UIcJ54t+wJMlZpyaD9MH/qmYAOEdf3/EfrFGS3M5k
	wQU/px9yOTCybK1TGyprPra2OrxV39dxPO4sePg/VrbSC2i/yICuCRJY8lWEkdgLWqMuwr3Z9oo
	tWfdYnQN8n8YJeCRlTjy7f7MADGoR2ii5WwlN1wE64kipwsdSpJBpdlmbd1WEfHSswD+3nmHvor
	vJZ52MZHVTeGLPtfROPP
X-Received: by 2002:a05:690e:e26:b0:664:ae68:33d7 with SMTP id
 956f58d0204a3-6683bdaf398mr3367592d50.9.1784611884801; Mon, 20 Jul 2026
 22:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-3-royalnet026@gmail.com>
 <25922edc-4ff1-4d28-9a64-2c28b2b690cb@collabora.com> <CAEWPSH70FecQRuGtA=S8+_CnLY5sMyf1j57Uwzwv54zceS1HZg@mail.gmail.com>
 <b8d63f61-b73e-412e-8119-ced1afdd4551@collabora.com>
In-Reply-To: <b8d63f61-b73e-412e-8119-ced1afdd4551@collabora.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Tue, 21 Jul 2026 07:31:13 +0200
X-Gm-Features: AUfX_mxmfnzPqEwa71ax-VO-JiPM0c52nSKLc5Ko0WZ2ScXDIi8A0Y6FL5e5p2A
Message-ID: <CAEWPSH5j3tYNb1JKRGwa00PVnYAgCKS+B-Qz07D8Z7TJea5cMw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_223126_102889_1A65B714 
X-CRM114-Status: GOOD (  26.16  )
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

SGkgRG1pdHJ5LAoKPiBSZS1hcm1pbmcgd2lsbCBiZSBiZXN0IG9wdGlvbiBpZiBpdCB3b3JrcyBw
cm9wZXJseS4KCldlbnQgYmFjayB0byBpdCBhbmQgbWFkZSBpdCB3b3JrIHByb3Blcmx5IC0tIHdp
dGggb25lIGhvbmVzdCBjYXZlYXQKYXQgdGhlIGVuZC4KClBsYWluIGNhbmNlbC9yZS1hcm0gY291
bGQgbm90IGhhdmUgYmVlbiBlbm91Z2ggYXMgcHJldmlvdXNseQp3cml0dGVuOiBoZG1pcnhfcmVz
dW1lKCkgZnVsbHkgcmVzZXRzIHRoZSBjb250cm9sbGVyIHZpYQpyZXNldF9jb250cm9sX2J1bGtf
YXNzZXJ0L2RlYXNzZXJ0IGluIGhkbWlyeF9lbmFibGUoKSwgd2lwaW5nIHRoZQphdWRpbyBjb25m
aWd1cmF0aW9uIChJMlNfRU4sIEFVRElPX0VOQUJMRSwgRklGTyB0aHJlc2hvbGRzKSwgYW5kCnRo
ZSB3b3JrZXIncyBlcnJvciBwYXRoIG5ldmVyIHJlLXByb2dyYW1zIHRob3NlIC0tIGl0IG9ubHkg
cmVzeW5jcwp0aGUgY2xvY2sgcmF0ZSBhbmQgcmVpbml0cyB0aGUgRklGTy4gU28gdjQgZG9lczoK
Ci0gc3VzcGVuZDogY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCkgb24gdGhlIGF1ZGlvIHdvcmtl
ciBiZWZvcmUKdGhlIGNsb2NrcyBhcmUgZ2F0ZWQgKGF1ZGlvX3N0cmVhbWluZyBzdGF5cyBzZXQp
OwotIHJlc3VtZTogaWYgYSBjYXB0dXJlIHN0cmVhbSBpcyBhY3RpdmUsIHJlLXByb2dyYW0gdGhl
IHdob2xlCmF1ZGlvIHBhdGggKGNsb2NrIGZyb20gdGhlIGxhc3Qga25vd24gc2FtcGxlIHJhdGUs
IEZJRk8KdGhyZXNob2xkcywgSTJTX0VOLCBBVURJT19FTkFCTEUpIGFuZCByZS1hcm0gdGhlIHdv
cmtlci4KClRoZSBwcm9ncmFtbWluZyBpcyBmYWN0b3JlZCBvdXQgb2YgaHdfcGFyYW1zKCkgaW50
byBhIHNoYXJlZApoZG1pcnhfYXVkaW9fc2V0dXAoKSBoZWxwZXIgc28gcmVzdW1lIGFuZCBod19w
YXJhbXMgY2Fubm90IGRyaWZ0LgpJIGFsc28gY2hlY2tlZCB0aGF0IG5vdGhpbmcgaW4gdGhlIHBv
c3QtcmVzdW1lIGhvdHBsdWcgcmUtaW5pdCBwYXRoCihwbHVnb3V0L3BsdWdpbi9zdWJtb2R1bGVf
aW5pdC9jb250cm9sbGVyX2luaXQpIHRvdWNoZXMgdGhlIGF1ZGlvCmJpdHMsIHNvIHRoZSByZXN0
b3JlIHN1cnZpdmVzIHRoZSByZXBsdWcgZGFuY2UgcmVzdW1lIHRyaWdnZXJzLgoKTWVhc3VyZWQg
b24gdGhlIE9yYW5nZSBQaSA1IFBsdXMgKHBtX3Rlc3Q9ZGV2aWNlcywgaS5lLiBmdWxsIGRldmlj
ZQpzdXNwZW5kL3Jlc3VtZSBjYWxsYmFja3MsIGFjdGl2ZSBjYXB0dXJlIHN0cmVhbSB3aXRoIGxp
dmUgYXVkaW8KdGhyb3VnaCB0aGUgd2hvbGUgY3ljbGUpOiBvbiByZXN1bWUgdGhlIGNhcHR1cmUg
c2ltcGx5IGNvbnRpbnVlcyAtLQphdWRpbyB3YXMgZmxvd2luZyBhZ2FpbiB0aGUgbW9tZW50IHRo
ZSBkaXNwbGF5IGNhbWUgYmFjaywgbm8KdXNlcnNwYWNlIGludGVydmVudGlvbiwgY2xlYW4gZG1l
c2csIG5vIG9vcHMgaW4gYW55IG9mIHRoZSB+NgpjeWNsZXMgZXhlcmNpc2VkIHRvbmlnaHQuCgpU
aGUgY2F2ZWF0OiBhICpzZWNvbmQqIHN1c3BlbmQvcmVzdW1lIGN5Y2xlIGluIHRoZSBzYW1lIGJv
b3QgbGVhdmVzCnRoZSBhdWRpbyBkYXRhcGF0aCBzaWxlbnQgKHRoZSBJMlMgc2xhdmUgc2VlcyBu
byBiaXQgY2xvY2ssIHNvCmNhcHR1cmUgcmVhZHMgdGltZSBvdXQpIGV2ZW4gdGhvdWdoIHRoZSBy
ZXN1bWUgcmVzdG9yZSByZS1wcm9ncmFtcwpldmVyeXRoaW5nLCBhbmQgYSBmcmVzaCBzdHJlYW0g
b3BlbiBkb2VzIG5vdCByZWNvdmVyIGl0IC0tIG9ubHkgYQpyZWJvb3QgZG9lcy4gTm90YWJseSB0
aGlzIGhhcHBlbnMgd2l0aCBwbGFpbiBuby1zdHJlYW0gc3VzcGVuZApjeWNsZXMgYXMgd2VsbCwg
c28gaXQgaXMgbm90IGNhdXNlZCBieSAoYW5kIHdvdWxkIG5vdCBiZSBwcmV2ZW50ZWQKYnkpIGVp
dGhlciB0aGUgcmUtYXJtIG9yIHRoZSAtRUJVU1kgYXBwcm9hY2ggLS0gaXQgbG9va3MgbGlrZSBt
b3JlCmNvbnRyb2xsZXIgc3RhdGUgbG9zdCBvbiByZXBlYXRlZCByZXNldCB0aGF0IG5laXRoZXIg
aHdfcGFyYW1zIG5vcgpyZXN1bWUgY3VycmVudGx5IGNvdmVycywgbGlrZWx5IHRoZSBzYW1lIHdh
cm0tdXAgc3RhdGUgbWFjaGluZSBJCmRlc2NyaWJlZCBpbiB0aGUgdjMgdGVzdGluZyBub3RlIChh
dWRpbyBuZWVkaW5nIGEgdmlkZW8gU1RSRUFNT04KYWZ0ZXIgYSByZXBsdWcpLiBJIGFtIGluc3Ry
dW1lbnRpbmcgdGhlIHJlZ2lzdGVyIHN0YXRlIG5leHQgdG8Kcm9vdC1jYXVzZSBpdDsgSSdkIHRy
ZWF0IGl0IGFzIGEgZm9sbG93LXVwIHJhdGhlciB0aGFuIGEgdjQKYmxvY2tlciwgYnV0IGhhcHB5
IHRvIGhlYXIgaWYgeW91IHNlZSBpdCBkaWZmZXJlbnRseSAtLSBhbmQgY3VyaW91cwp3aGV0aGVy
IHRoZSA1QiBzaG93cyB0aGUgc2FtZSBzZWNvbmQtY3ljbGUgYmVoYXZpb3IuCgp2NCBmb2xsb3dz
IHdpdGggdGhlIHJlLWFybSBwbHVzIHRoZSBkdHMgYW5kIGJpbmRpbmcgY2hhbmdlcyBhbHJlYWR5
Cm1lbnRpb25lZC4KCk9uZSBtb3JlIHNtYWxsIHRoaW5nIHRoZSBhdWRpbyBiaXQgZXhwb3Nlcywg
Zm9yIGEgcG9zc2libGUKZm9sbG93LXVwOiBoZG1pcnhfY2VjX3VwZGF0ZV9iaXRzKCkgaXMgYSBu
b24tYXRvbWljIFJNVyAodGhlIHJlYWQKYW5kIHRoZSB3cml0ZSBlYWNoIHRha2UgcnN0X2xvY2sg
c2VwYXJhdGVseSksIGFuZCB3aXRoIGF1ZGlvIGFkZGVkCnRoZXJlIGFyZSBub3cgdHdvIHdyaXRl
cnMgb2YgR0xPQkFMX1NXRU5BQkxFLCBzbyBhIENFQyBhZGFwdGVyCmVuYWJsZSByYWNpbmcgYW4g
YXVkaW8gZW5hYmxlL2Rpc2FibGUgY291bGQgaW4gdGhlb3J5IGxvc2UgdGhlCm90aGVyIHNpZGUn
cyBiaXQuIE1haW5saW5lIHRvZGF5IGhhcyBhIHNpbmdsZSB3cml0ZXIsIHNvIGl0IGlzIG5vdAph
IGJ1ZyB0aGVyZS4gQ2FuIHNlbmQgYSBzbWFsbCBwYXRjaCBtYWtpbmcgaXQgYXRvbWljIGlmIHlv
dSB0aGluawppdCBpcyB3b3J0aCBpdC4KCkJlc3QgcmVnYXJkcywKSWdvcgoKT24gTW9uLCBKdWwg
MjAsIDIwMjYgYXQgNDozN+KAr1BNIERtaXRyeSBPc2lwZW5rbwo8ZG1pdHJ5Lm9zaXBlbmtvQGNv
bGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gNy8yMC8yNiAxNTozMCwgSWdvciBQYXVub3ZpYyB3
cm90ZToKPiA+IEhpIERtaXRyeSwKPiA+Cj4gPiBHcmVhdCB0byBoZWFyIGl0IHdvcmtzIG9uIHRo
ZSA1QiAtLSB0aGFua3MgZm9yIHRlc3RpbmchCj4gPgo+ID4gQWdyZWVkIG9uIHRoZSAtRUJVU1kg
Z3VhcmQsIGRvbmUgaW4gbXkgdHJlZSBleGFjdGx5IGFzIHlvdSB3cm90ZSBpdC4KPiA+IEl0IGFs
c28gc3VwZXJzZWRlcyB0aGUgc3VzcGVuZCBjYW5jZWwvcmUtYXJtIEkgaGFkIHF1ZXVlZCBmcm9t
IHRoZQo+ID4gYm90IHJldmlldzogd2l0aCBzdXNwZW5kIHJlZnVzZWQgd2hpbGUgYXVkaW9fc3Ry
ZWFtaW5nIGlzIHNldCwgdGhlCj4gPiB3b3JrZXIgY2FuIG5ldmVyIGJlIGFybWVkIGF0IHN1c3Bl
bmQgdGltZSwgc28gdGhvc2UgaHVua3MgYXJlCj4gPiBkcm9wcGVkLgo+ID4KPiA+IHY0IGZvbGxv
d3Mgc2hvcnRseSB3aXRoIHRoaXMgcGx1cyBTZWJhc3RpYW4ncyBkdHMgcmVzdHJ1Y3R1cmluZwo+
ID4gKHNoYXJlZCBkaXNhYmxlZC1ieS1kZWZhdWx0IGNhcmQgaW4gcmszNTg4LWV4dHJhLmR0c2ks
IHJlbmFtZWQgdG8KPiA+ICJSSzM1ODggSERNSS1JTiIpIGFuZCBLcnp5c3p0b2YncyBiaW5kaW5n
IGNvbW1lbnRzIChkYWktY29tbW9uLnlhbWwKPiA+IHJlZmVyZW5jZSArIHVuZXZhbHVhdGVkUHJv
cGVydGllcykuCj4KPiBSZS1hcm1pbmcgd2lsbCBiZSBiZXN0IG9wdGlvbiBpZiBpdCB3b3JrcyBw
cm9wZXJseS4KPgo+IC0tCj4gQmVzdCByZWdhcmRzLAo+IERtaXRyeQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
