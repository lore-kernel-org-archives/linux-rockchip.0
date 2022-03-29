Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB4DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 13:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drMayIQaNSq/xNpLJjhtSNWFfJKixocMIjyL/Vv/mXA=; b=nk0/I3HdiVHYKl
	54eYz1KBGmMUfGhF+Qnpm0/Wio8wzEUDgQOc911jvGQe4kybtHfv7PXnRMztPZnnOAeDimCpN12nd
	yGoY71spxjkAQ2kn/5O+E5/nXrJJEJxTksusLGX9WTwBIpH/9QndATkYUNyMefFYgUbOE7Yvp3LIk
	cPn6NzZcXpRpdumdpoMWTses43tsVCQicVQsi7wk9Vuh44GOWPgLcKUcS5KObYXKbDHwLHaBo/1CN
	ALdHBAxcSN1VWET7YUivkxw/YBq0tVS/89BsLMrbQl9R+muHb3cF18f3dpjv2FnIpMXdd2gLXDVxc
	sBVJ/QATlbF5ho2S5nyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZC5c-00COkS-PS; Tue, 29 Mar 2022 13:40:52 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZC5Z-00COix-VJ
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 13:40:51 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id gh15so14357366qvb.8
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 06:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=OX8uzX6cgkseXeRBYjHM47D6ZNq3XzBbHTvAN/4NfGI=;
 b=sFtk4eBC34EHTFHpofTMUaiDbxm3jMEFknlxuJ7E8YKR0t/sJcRsdn4blofaCgMRYj
 BSUJ1+NAP6PulVGl9DMx8VZVRII71wc6m5gXub+QXqaqpVzvb45nwvJdC2pKVDRAsyuI
 WX7FopRIBjNrAM/Z9kYPOqTwAmE4vBHezRQBlMimsNC7JywP6zv6ViDsLIFo1sCOmNv8
 Yvmh2KNDpSyiBi4A2wziBEkiXZ2EhRC8Tn9hDjRFDFPwCmVTPF4viVZsJEcn125h7C91
 7FlgWkdx8nflgF7VohVqBqGyhglYNolDunbrMkQFFpe7r0V2PuNlWLL81BzO8Si3EOfs
 kdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=OX8uzX6cgkseXeRBYjHM47D6ZNq3XzBbHTvAN/4NfGI=;
 b=VsTkAx0aO20ERhT1w25oSN0ZTThvjFjri+zHLr/BJPqGYET6O8Ejbz947KGA1VePjh
 rnYIWod+1BM1D7+YKXdBZbfV2mtzX1QF8Okm/6UMsv4fpn9RlnYg+KV+TmgHRP5/GBhp
 4rYVuM9WcIKqzvteBzJ7QbPtY29aW7Mico3nG7+yOuktSTjQKC7isDHxSJXz4ciWvDJl
 xaCJeN5JH0+ucvswUCBuOiFqTAjkxprUTHv4tP8dgrya/sxMYZi3ajSgVJAUo1U8LfrB
 LDLeIXtgJ1rCeO6ZRKcUua6mAviF7B8uKoHVYkdZ0dceYZex+4P03RTw6nduqciqm4yv
 kAUQ==
X-Gm-Message-State: AOAM530cX+TaEK274AdenxNmZBVtJ9JvmkDJ5UBojlQVPp58N9Udb+nt
 nWywIxk8uQ1ZIJkaIvF01WwkiQ==
X-Google-Smtp-Source: ABdhPJwHaZa4QGYsWt/LUhJpekp72RsXv+ubveLeD4EjzM+7VH63XURE9ZZ3SS373zSjgJ9Nvbo+yQ==
X-Received: by 2002:a05:6214:4112:b0:441:720:8434 with SMTP id
 kc18-20020a056214411200b0044107208434mr26593457qvb.23.1648561248500; 
 Tue, 29 Mar 2022 06:40:48 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 y66-20020a37af45000000b0067dc0fc539fsm9684780qke.86.2022.03.29.06.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 06:40:48 -0700 (PDT)
Message-ID: <515bd7309493ef0b920bd8e20d856de2959ba3b7.camel@ndufresne.ca>
Subject: Re: [PATCH] staging: media: rkvdec: Update TODO list
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sebastian Fricke <sebastian.fricke@collabora.com>, 
 linux-media@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:HANTRO VPU CODEC
 DRIVER" <linux-rockchip@lists.infradead.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>, open list <linux-kernel@vger.kernel.org>
Date: Tue, 29 Mar 2022 09:40:47 -0400
In-Reply-To: <20220326183715.67332-2-sebastian.fricke@collabora.com>
References: <20220326183715.67332-1-sebastian.fricke@collabora.com>
 <20220326183715.67332-2-sebastian.fricke@collabora.com>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_064050_032909_3F182086 
X-CRM114-Status: GOOD (  16.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgc2FtZWRpIDI2IG1hcnMgMjAyMiDDoCAxOTozNyArMDEwMCwgU2ViYXN0aWFuIEZyaWNrZSBh
IMOpY3JpdMKgOgo+IFZQOSBzdXBwb3J0IGhhcyBiZWVuIGFkZGVkIHRvIHRoZSBkcml2ZXIgYnkg
ZjI1NzA5YzRmZjE1Lgo+IEFuZCB0aGUgVlA5IHVBQkkgd2FzIG1lcmdlZCB3aXRoIGI4OGRiZTM4
ZGNhOC4KPiAKPiBUaGUgcmVtYWluaW5nIGNvZGVjIHRoYXQga2VlcHMgdGhpcyBkcml2ZXIgaW4g
c3RhZ2luZyBpcyBIRVZDLgo+IFVwZGF0ZSB0aGUgVE9ETyBsaXN0IGFjY29yZGluZ2x5Lgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25l
QGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL1RP
RE8gfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9UT0RP
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9UT0RPCj4gaW5kZXggZTBmMGYxMmYwYWM1
Li4yYzA3NzkzODMyNzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRl
Yy9UT0RPCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9UT0RPCj4gQEAgLTEs
NiArMSw2IEBACj4gLSogU3VwcG9ydCBmb3IgVlA5IGlzIHBsYW5uZWQgZm9yIHRoaXMgZHJpdmVy
Lgo+ICsqIFN1cHBvcnQgZm9yIEhFVkMgaXMgcGxhbm5lZCBmb3IgdGhpcyBkcml2ZXIuCj4gIAo+
IC0gIEdpdmVuIHRoZSBWNEwgY29udHJvbHMgZm9yIHRob3NlIENPREVDcyB3aWxsIGJlIHBhcnQg
b2YKPiArICBHaXZlbiB0aGUgVjRMIGNvbnRyb2xzIGZvciB0aGF0IENPREVDIHdpbGwgYmUgcGFy
dCBvZgo+ICAgIHRoZSB1QUJJLCBpdCB3aWxsIGJlIHJlcXVpcmVkIHRvIGhhdmUgdGhlIGRyaXZl
ciBpbiBzdGFnaW5nLgo+ICAKPiAgICBGb3IgdGhpcyByZWFzb24sIHdlIGFyZSBrZWVwaW5nIHRo
aXMgZHJpdmVyIGluIHN0YWdpbmcgZm9yIG5vdy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
