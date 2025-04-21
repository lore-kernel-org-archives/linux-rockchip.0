Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65A22C369AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Apr 2025 14:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRWU57w0fKCyR8t5Sok3vhaW45BlQ3H+q1TnwS56gYc=; b=lyp7pwlEl/Ddxx
	AJ2Q/QiVcPMgGnbrLCwUFqu+58d4MmeW8V4OiLJT8djUOAYCebXvTksNhN330Asy6A3VCsmDjyI00
	63cAiUHY4mnKP8YuCIxu2xmhwyfFsj03/LjfR3Ye1Hx4er1f3EEQ4hsfjecT8O5rPs/F9E3LQ1VEw
	KTqIfvY9Xuka1nqvmgnnc6EHOwMi4Q+zGh3o6PdmR3t0JHIGJSh0E/GKtYHma19rX+653MS6Yv1kg
	nG450O1w8tvbn9HM8Ab3mqnSEnFnEpVxPlHRg7A6q9aH1+R1Ilov2XxpsfnUA/wotkTTi7eJnPd+g
	s8MCjTLXGXoQy97+U6Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6sTj-00000004UyD-2x6Z;
	Mon, 21 Apr 2025 14:50:35 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6sRp-00000004UZ3-3vNJ
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Apr 2025 14:48:40 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-225df540edcso51476375ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Apr 2025 07:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745246917; x=1745851717; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zSfLQ0ZocQ8Cc1F+LLIj9Qo0IKOtbGFRHofDF9JlvyI=;
        b=ORPhYmgJPdjNhkZLMRYLDRDwRdeRE7aXewxhr/dwT631FzqWrhv7E7OKpT+WD8mlaj
         MrcvrhHQc4g7lJT6eYnNXfCwQ2lzY/YEU9UiHnyCSiZeiGnh/mYVOXKCI/6fhsRwIT6f
         x75uHf9qybSwDS3pjzavneIyxfKfOe5N9Sf1g6QPXfcxPqMQJsQZamKqZ4CpoJeqNlg6
         0oeFxIZbDBgaq5W6kXK9lX5onbIXzakKPf0N9aJQd4NW7ici+00V1ZI0/5AYjEKqs2xr
         n6c9c9PaUIfBUQM0BOiCWeLqx21xInRXGqGVSEz3P9jctqxn7yssNlXdbKmxSPJX0rCo
         Rcyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745246917; x=1745851717;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zSfLQ0ZocQ8Cc1F+LLIj9Qo0IKOtbGFRHofDF9JlvyI=;
        b=TK8L+1iSE6Z2h7qGM3SfAlZWFefU3heGUihxShb63sCQYUYpqZisMxakQ7h0vNmCXS
         YMAruJqmVxi2jggieAKzDt/hxzhp0/NK4aR02GswqoNXENMCXtOdFL5tbbQWHuV4k1Mz
         0VI6QpOuc1ZroYMWWj+rQgc8S4j3HWeIOauCSRduKmFNpU96S4zYerhazScXfw5YSAeA
         jFZVVxW/wKMb0PLfe9GDJQzWtmK1mFRa5KlsCNyAlQV+hNBlxRkZapioc5/qXz389H9s
         AeA3+LV2v6Xq8I4NFXNSnk91pjXJEV32ea6CrGUs0Lo9OBJd8VvNuzTi4YTNsCvITgfT
         dihw==
X-Forwarded-Encrypted: i=1; AJvYcCX/RmrlEGADWrnmeX4DvkOKqn0gAcPz7O8OT6ZdHveHyHpKMPiFsv2A8KARgjTf8pmbFqRGRgFQdpLebWErUA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyg9hslvlxiSfdRYf+q2yNCj9KV+74O5YMxVzlFbsrc3+h+xQu6
	Q4GaaW1NtUTUtG3rMo3aPAISwi+3Sv6oMv3AOiWOv2I88LuJAJH0p2aORqy3xw==
X-Gm-Gg: ASbGncsacYAvosWC7Umj9Rb9WRK8aNXA0w9Q0+kaP/iGd+AKym5gavi3+3KppVTyJe8
	7wRl3SpJTHbyMC8wJumAnEYhprLcs/MfYa5SSU0kIFEaqhxxGeI+koMc2roBj8ykJPU7WiTr/jK
	B/I4nFTT+A3hHqwnOqxwTJrz8bDGZhHVTp5AGMrUzc9rq/duQQxYZu5tfXHqPmfuB15CEazp2OI
	/Wct0bvFC8MoEDRs4U8Vd4yVCXFyCOmkMpWLekZh9JkMDVuEio7B2r6NqSIFOu6KYSoTsuBpcgh
	/12TMbcoTCAO9oLhrU/9PenXX2aRJbXe/JFUrbK3gPGy3t04aTc1qMDy+s5hObo=
X-Google-Smtp-Source: AGHT+IGLyVgf/HQ4DSOk1F1wHKJSkand7jXIg3hSIBpK9iwhMih+xeFlCH/OD/y2+M6k4Dl6AH84vg==
X-Received: by 2002:a17:902:ce82:b0:224:3994:8a8c with SMTP id d9443c01a7336-22c50befbf2mr187120275ad.8.1745246916945;
        Mon, 21 Apr 2025 07:48:36 -0700 (PDT)
Received: from thinkpad ([120.56.203.130])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfae9e77sm6662709b3a.160.2025.04.21.07.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 07:48:36 -0700 (PDT)
Date: Mon, 21 Apr 2025 20:18:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Hans Zhang <18255117159@163.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, heiko@sntech.de, 
	robh@kernel.org, jingoohan1@gmail.com, thomas.richard@bootlin.com, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <vtb7vd7xbdoct3k2ck6nqngevq3os7t6iof5vyxnfoutingjpl@juhcjyp6qstp>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
 <aACsJPkSDOHbRAJM@ryzen>
 <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
 <aACyRp8S9c8azlw9@ryzen>
 <52a2f6dc-1e13-4473-80f2-989379df4e95@163.com>
 <aAC-VTqJpCqcz6NK@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aAC-VTqJpCqcz6NK@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_074837_988639_29B4C204 
X-CRM114-Status: GOOD (  23.44  )
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMTA6Mzk6NDlBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUaHUsIEFwciAxNywgMjAyNSBhdCAwNDowNzo1MVBNICswODAwLCBIYW5zIFpo
YW5nIHdyb3RlOgo+ID4gT24gMjAyNS80LzE3IDE1OjQ4LCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+
ID4gCj4gPiBIaSBOaWtsYXMgYW5kIFNoYXduLAo+ID4gCj4gPiBUaGFuayB5b3UgdmVyeSBtdWNo
IGZvciB5b3VyIGRpc2N1c3Npb24gYW5kIHJlcGx5Lgo+ID4gCj4gPiBJIHRlc3RlZCBpdCBvbiBS
SzM1ODggYW5kIG91ciBwbGF0Zm9ybS4gQnkgc2V0dGluZyBwY2k9cGNpZV9idXNfc2FmZSwgdGhl
Cj4gPiBtYXhpbXVtIE1QUyB3aWxsIGJlIGF1dG9tYXRpY2FsbHkgbWF0Y2hlZCBpbiB0aGUgZW5k
Lgo+ID4gCj4gPiBTbyBpcyBteSBwYXRjaCBubyBsb25nZXIgbmVlZGVkPyBGb3IgUkszNTg4LCBk
b2VzIHRoZSBjdXN0b21lciBoYXZlIHRvCj4gPiBjb25maWd1cmUgQ09ORklHX1BDSUVfQlVTX1NB
RkUgb3IgcGNpPXBjaWVfYnVzX3NhZmU/Cj4gPiAKPiA+IEFsc28sIGZvciBwY2ktbWVzb24uYywg
Y2FuIHRoZSBtZXNvbl9zZXRfbWF4X3BheWxvYWQgYmUgZGVsZXRlZD8KPiAKPiBJIHRoaW5rIHRo
ZSBvbmx5IHJlYXNvbiB3aHkgdGhpcyB3b3JrcyBpcyBiZWNhdXNlCj4gcGNpZV9idXNfY29uZmln
dXJlX3NldHRpbmdzKCksIGluIHRoZSBjYXNlIG9mCj4gcGNpZV9idXNfY29uZmlnID09IFBDSUVf
QlVTX1NBRkUsIHdpbGwgd2FsayB0aGUgYnVzIGFuZCBzZXQgTVBTIGluCj4gdGhlIGJyaWRnZSB0
byB0aGUgbG93ZXN0IG9mIHRoZSBkb3duc3RyZWFtIGRldmljZXM6Cj4gaHR0cHM6Ly9naXRodWIu
Y29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvdjYuMTUtcmMyL2RyaXZlcnMvcGNpL3Byb2JlLmMjTDI5
OTQtTDI5OTkKPiAKPiAKPiBTbyBIYW5zLCBpZiB5b3UgbG9vayBhdCBsc3BjaSBmb3IgdGhlIG90
aGVyIFJDcy9icmlkZ2VzIHRoYXQgZG9uJ3QKPiBoYXZlIGFueSBkb3duc3RyZWFtIGRldmljZXMg
Y29ubmVjdGVkLCBkbyB0aGV5IGFsc28gc2hvdyBEZXZDdGwuTVBTIDI1NkIKPiBvciBkbyB0aGV5
IHN0aWxsIHNob3cgMTI4QiA/Cj4gCj4gCj4gT25lIGNvdWxkIGFyZ3VlIHRoYXQgZm9yIGFsbCBw
b2xpY2llcyAoZXhlY2VwdCBmb3IgbWF5YmUgUENJRV9CVVNfVFVORV9PRkYpLAo+IHBjaWVfYnVz
X2NvbmZpZ3VyZV9zZXR0aW5ncygpIHNob3VsZCBzdGFydCBvZmYgYnkgaW5pdGlhbGl6aW5nIERl
dkN0bC5NUFMgdG8KPiBEZXZDYXAuTVBTIChmb3IgdGhlIGJyaWRnZSBpdHNlbGYpLCBhbmQgYWZ0
ZXIgdGhhdCBwY2llX2J1c19jb25maWd1cmVfc2V0dGluZ3MoKQo+IGNhbiBvdmVycmlkZSBpdCBk
ZXBlbmRpbmcgb24gcG9saWN5LCBlLmcuIHNldCBNUFMgdG8gMTI4QiBpbiBjYXNlIG9mCj4gcGNp
ZV9idXNfY29uZmlnID09IFBDSUVfQlVTX1BFRVIyUEVFUiwgb3Igd2FsayB0aGUgYnVzIGluIGNh
c2Ugb2YKPiBwY2llX2J1c19jb25maWcgPT0gUENJRV9CVVNfU0FGRS4KPiAKPiBUaGF0IHdheSwg
d2Ugc2hvdWxkIGJlIGFibGUgdG8gcmVtb3ZlIHRoZSBzZXR0aW5nIGZvciBwY2ktbWVzb24uYyBh
cyB3ZWxsLgo+IAoKU29ycnkgZm9yIGJlaW5nIGxhdGUgdG8gdGhlIHBhcnR5IQoKSSBhZ3JlZSB3
aXRoIHlvdSB0aGF0IHdlIHNob3VsZCBzZXQgdGhlIGJyaWRnZSdzIE1QUyB0byBNUFNTIGJ5IGRl
ZmF1bHQuIEJ1dApkb2luZyBzbyB3b3VsZCBoYXZlIGFuIGVmZmVjdCBvbiBhbG1vc3QgYWxsIHBs
YXRmb3Jtcy4gQWxzbywgSSdtIG5vdCBzdXJlIGlmIHRoZQpCSU9TIHdvdWxkJ3ZlIGNvbmZpZ3Vy
ZWQgdGhlIGJyaWRnZSdzIE1QUyB0byBhIHNhbmUgZGVmYXVsdCAoSSdtIGp1c3QKc3BlY3VsYXRp
bmcgaGVyZSkuCgpTbyBJTU8gd2Ugc2hvdWxkIGxpbWl0IHRoZSBjaGFuZ2UgdG8gcGxhdGZvcm1z
IGhhdmluZyBjb250cm9sbGVyIGRyaXZlcnMgaW4gdGhlCmtlcm5lbC4gVGhpcyB3YXksIHdlIGNh
biBnZXQgcmlkIG9mIHRoZSBNUFMgaGFja3MgZnJvbSBjb250cm9sbGVyIGRyaXZlcnMgKGxpa2UK
cGNpLW1lc29uKSBhbmQgYWxzbyBtYWtlIHRoZSBjaGFuZ2UgbGVzcyBpbnZhc2l2ZS4gSWYgcmVx
dWlyZWQsIHdlIGNhbiBtYWtlIGl0CmdlbmVyaWMgZm9yIGFsbCBwbGF0Zm9ybXMgaW4gdGhlIGZ1
dHVyZS4KCkxldCBtZSBzaGFyZSB0aGUgZGlmZiBJIGhhdmUgaW4gbWluZCBhcyBhIHJlcGx5IHRv
IGhhbnMncyBwcm9wb3NhbC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
