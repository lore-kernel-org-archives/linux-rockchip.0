Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B19C369D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVnF/VDmVEJAVDF1uWfvvp49Z7e9YqCSpnqlgQZAFSY=; b=r1FZhCunyHACUD
	WihmsBs06bM197weSqU1ZfCscaCIgT7czv2/3LuJiGDv3LBFnz+v8V1LT0wdmQ6QXxcAMUrJgGS+0
	Go/vSHzMimN9r66Gr3wr3VG9mG8nfPbpTH+9KjbzBVUMwErEOOTi9Pr2HInv7NLe7e0XgYDpXbTAY
	9mT3Yszi0Do9krkdLvxTwIpc4o3ROwEzkIbYRZYuoEukes/bHuLnq+HOgribfKT7XiMvddBcskSNq
	54A5SKErzZIDOvhGtsNz+djr7FsFLsOpdy+dtyPiJmKveVTmyCSB2/lly1JqerSRNDg43yR1fsbo9
	J02r19eza5D9Y6AEkxQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ibT-00000002IcL-3iIa;
	Sat, 26 Apr 2025 16:42:11 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iZZ-00000002IVC-46rp
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 16:40:16 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-736aaeed234so2820554b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Apr 2025 09:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745685613; x=1746290413; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G1dxk80zPIpL1q4PhQ4ndWv9Mj5fqZbTdnW5ZkYRDcU=;
        b=zXvbXvsPWmhAXW0cV4BJ8icBn71B8ADR1WPJhp85DGBq/gGxbnFdCKq2At/3J7Pud+
         CBfxza058hm+OChdzo9X1iwnjAijO5kIgCZptqRmBHkWENnCMgQST9j7E6vl0V4u1UAb
         g4hL57/jUGgNm1nU70ijbhwd6XdcBxQByGL7bLq0Jk83Lu9Vs++UF8nme0hyURrBxzV2
         nQVOyVnJt2ZLbfwwT7bpelIxUKTbVZeWG5tcpj2Pjpah13jFQ4S2dI6iAAk7BDq5McHU
         CCC1U6fNiPqmB8QOVI7UqRcpKlQuBugJyl64+FX+22fRVrweePB3Siu6J//5h7vo7/NL
         GACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745685613; x=1746290413;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G1dxk80zPIpL1q4PhQ4ndWv9Mj5fqZbTdnW5ZkYRDcU=;
        b=MCwkq9/gKwNNuvHn/L5ojr97S+3dxyF0NRB2NFeuhLv48DkODCOmea4E3neKPKOo21
         H37IeNskoOwBMgyOJNE4j0IuxOU351tN4U57eWUT52ZV8f2kYWjaZUjqTk0b372qd5mS
         zhQmRiPOlPH3/Mww0KtPeBfC4i+qlIZ5MsWYYsXGJ/XjIwbanU/w4duE35LBjNFqA1bK
         2oQnihVOSBUwmhFqFBVaatQ9xmq5YonJeUG6rwr93UWd3bvjsqSswpwjbfA1QqfFPGY8
         +hHBdDp/DnX9QXf612Y9AoVBQ6r16JfxcUuIY0UipKqlf6wF9PmtHiWrF90ZgdNjuKmE
         KWkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWylHuNiiUXrtOxug0Qmx04JCJ2RsKIH5tD3/9aQG5KYDdMFA5Zs6ee0Xl9Kao4aQeA63PGQx5dLGDWQqzHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrwxCruxQX/tqzcwGFODkKIxkzO8PdMYgU2dZ4C90Vi0YL3wgi
	CHPS8j0LV6Ogj8d0Q7t84FKH9kTZlr3xFe/ABD30Hs9xAxr7jT59NJXLzFXXXw==
X-Gm-Gg: ASbGncu0xBzEs3Xm/282SZMILuUFgggI0WfKn8pSqeRltdnRohVEMhsWbyOK+/eMHqO
	6jUaSZncpWg7c4vCL0Mi8FY1uUEFI+JnRwyej2zLZYuR0OLw7N3rkepfroiDTnzTVH4VSCC9rTL
	MC5L2/xXxLkCqz+uR86BHJaLx1if/K6A2H4qfRzyGtZanrqeR+tEICjbKqfvOlitzlLgzDsq+sP
	XGjsD5rm0fgX50T58y0qu0DYMvReY6qPL4nsrZSaR8i38M4+8AiEAqglG0T0fnux6lIYxmFhFK+
	hR0fBm1xPAa75kuIcKTU2R6OYiu7HNxtd/H8qRmsFNTM8FGrHEsB
X-Google-Smtp-Source: AGHT+IEwFTn2KnzLPGidnDgvRdMd237ilzSbG/yZ5gr9RWrr3uHMD0GXUKLpE0ghRpRy4DDG51PaGQ==
X-Received: by 2002:a05:6a00:c85:b0:73e:30e0:8a2a with SMTP id d2e1a72fcca58-73fd896a123mr7017507b3a.17.1745685612904;
        Sat, 26 Apr 2025 09:40:12 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25941bbbsm5216582b3a.65.2025.04.26.09.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 09:40:12 -0700 (PDT)
Date: Sat, 26 Apr 2025 22:10:07 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, 
	heiko@sntech.de, robh@kernel.org, jingoohan1@gmail.com, shawn.lin@rock-chips.com, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] PCI: dw-rockchip: Reorganize register and
 bitfield definitions
Message-ID: <b6loj46o6txf3g7xrcjbewcz6kph7wh3lg732k4nfp72pfbnms@hsxzofycadgl>
References: <20250423153214.16405-1-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423153214.16405-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_094014_019682_D6472F44 
X-CRM114-Status: GOOD (  17.70  )
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

T24gV2VkLCBBcHIgMjMsIDIwMjUgYXQgMTE6MzI6MTFQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiAxLiBQQ0k6IGR3LXJvY2tjaGlwOiBSZW1vdmUgdW51c2VkIFBDSUVfQ0xJRU5UX0dFTkVS
QUxfREVCVUcKPiAyLiBQQ0k6IGR3LXJvY2tjaGlwOiBSZW9yZ2FuaXplIHJlZ2lzdGVyIGFuZCBi
aXRmaWVsZCBkZWZpbml0aW9ucwo+IDMuIFBDSTogZHctcm9ja2NoaXA6IFVuaWZ5IGxpbmsgc3Rh
dHVzIGNoZWNrcyB3aXRoIEZJRUxEX0dFVAo+IAoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0t
Cj4gQ2hhbmdlcyBmb3IgdjM6Cj4gLSBEZWxldGUgdGhlIHJlZHVuZGFudCBTcGFjZXMgaW4gdGhl
IGNvbW1lbnRzIG9mIHBhdGNoIDIvMy4KPiAKPiBDaGFuZ2VzIGZvciB2MjoKPiAtIEFkZCByZWdp
c3RlciBhbm5vdGF0aW9ucyB0byBlbmhhbmNlIHJlYWRhYmlsaXR5Lgo+IC0gVXNlIG1hY3JvIGRl
ZmluaXRpb25zIGluc3RlYWQgb2YgbWFnaWMgbnVtYmVycy4KPiAKPiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpL3BhdGNoLzIwMjUwNDE2MTUxOTI2LjE0MDIw
Mi0xLTE4MjU1MTE3MTU5QDE2My5jb20vCj4gCj4gQmpvcm4gSGVsZ2FhczoKPiBUaGVzZSB3b3Vs
ZCBiZSBtYXRlcmlhbCBmb3IgYSBzZXBhcmF0ZSBwYXRjaDoKPiAKPiAtIFRoZSAjZGVmaW5lcyBm
b3IgcmVnaXN0ZXIgb2Zmc2V0cyBhbmQgYml0cyBhcmUga2luZCBvZiBhIG1lc3MsCj4gICBlLmcu
LCBQQ0lFX1NNTEhfTElOS1VQLCBQQ0lFX1JETEhfTElOS1VQLCBQQ0lFX0xJTktVUCwKPiAgIFBD
SUVfTDBTX0VOVFJZLCBhbmQgUENJRV9MVFNTTV9TVEFUVVNfTUFTSyBhcmUgaW4KPiAgIFBDSUVf
Q0xJRU5UX0xUU1NNX1NUQVRVUywgYnV0IHlvdSBjb3VsZG4ndCB0ZWxsIHRoYXQgZnJvbSB0aGUK
PiAgIG5hbWVzLCBhbmQgdGhleSdyZSBub3QgZXZlbiBkZWZpbmVkIHRvZ2V0aGVyLgo+IAo+IC0g
U2FtZSBmb3IgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQsIFBDSUVfTElOS19SRVFfUlNUX05PVF9J
TlQsCj4gICBQQ0lFX1JETEhfTElOS19VUF9DSEdFRCwgd2hpY2ggYXJlIGluIFBDSUVfQ0xJRU5U
X0lOVFJfU1RBVFVTX01JU0MuCj4gCj4gLSBQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFIGlzIGFw
cGFyZW50bHkgaW4gUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkw/Cj4gICBTdXJlIHdvdWxkbid0
IGd1ZXNzIHRoYXQgZnJvbSB0aGUgbmFtZXMgb3IgdGhlIG9yZGVyIG9mICNkZWZpbmVzLgo+IAo+
IC0gUENJRV9DTElFTlRfR0VORVJBTF9ERUJVRyBpc24ndCB1c2VkIGF0IGFsbC4KPiAKPiAtIFN1
Ym1pc3Npb25zIGJhc2VkIG9uIHRoZSBmb2xsb3dpbmcgdjUgcGF0Y2hlczoKPiBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpL3BhdGNoLzE3NDQ4NTAxMTEtMjM2
MjY5LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29tLwo+IGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMTc0NDg1MDExMS0y
MzYyNjktMi1naXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCj4gaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8xNzQ0ODUwMTEx
LTIzNjI2OS0zLWdpdC1zZW5kLWVtYWlsLXNoYXduLmxpbkByb2NrLWNoaXBzLmNvbS8KPiBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpL3BhdGNoLzE3NDQ5NDA3
NTktMjM4MjMtMS1naXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCj4gLS0t
Cj4gCj4gSGFucyBaaGFuZyAoMyk6Cj4gICBQQ0k6IGR3LXJvY2tjaGlwOiBSZW1vdmUgdW51c2Vk
IFBDSUVfQ0xJRU5UX0dFTkVSQUxfREVCVUcKPiAgIFBDSTogZHctcm9ja2NoaXA6IFJlb3JnYW5p
emUgcmVnaXN0ZXIgYW5kIGJpdGZpZWxkIGRlZmluaXRpb25zCj4gICBQQ0k6IGR3LXJvY2tjaGlw
OiBVbmlmeSBsaW5rIHN0YXR1cyBjaGVja3Mgd2l0aCBGSUVMRF9HRVQKPiAKPiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgODcgKysrKysrKysrKystLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzcgZGVsZXRpb25zKC0p
Cj4gCj4gCj4gYmFzZS1jb21taXQ6IDlkN2EwNTc3YzlkYjM1YzRjYzUyZGI5MGJjNDE1ZWEyNDg0
NDY0NzIKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDVkOWYxMTBmMjM4MjEyY2RlNzYzYjg0MWYx
MzM3ZDAwNDVkOTNmNWIKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGI2Mzk3NWI4OTIyN2E0MWI5
YjZkNzAxYzkxMzBlZTM0Mjg0OGM4YjYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDQ2ZjAyZGEw
ZGI0NzM3YjQ2Y2QwNmNkMGQyNWJhNjliOGQ3ODlmOTAKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6
IGQwNmUyNWRlMzY1OGI3M2FkODVkMTQ4NzI4ZWQzOTQ4YmZjZWM3MzEKPiAtLSAKPiAyLjI1LjEK
PiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
