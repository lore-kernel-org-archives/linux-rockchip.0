Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7BBC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 13:59:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24008611C0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 13:59:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 24008611C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pu0/tzFL5CC+aWVF6ZEOwZJPToigLLkw8gcHR2pDQIY=; b=tkY6NoDXGeX4+n
	Awew7Mv0pnRd92lp54v4/EINKC9v4dQvThaBfV+gkeNqytkyRT/fs+GOBnfcjdVsj9MuXQwaf2xBW
	/XBzevTK+YteQF0Djbk3I66hzRsmgl+FDPJdFhVGtxMnzC6JHgOPrvyn+zdbwr0uy5HzEYHTz8o4H
	CUTzPw+Z5oCyrP8HfMCsbnBdZvT3nCwHfFvq+We4qcAWahE52FXATtFh6s+Yo5euvPsIc4EiBoxGu
	xpTGtMb7dbwjZ7bedFIexBPTO+9Hp1FPBytrINEpwM9k68/KgwkcV+xom30645tO6ROCiVCvd5EkG
	3/gdW8FbNxtvi1eY9mXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk5B6-00GYSs-HR; Mon, 08 Nov 2021 13:59:16 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk5B3-00GYR7-7b
 for linux-rockchip@lists.infradead.org; Mon, 08 Nov 2021 13:59:14 +0000
Received: by mail-qk1-x730.google.com with SMTP id bk22so15477587qkb.6
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Nov 2021 05:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=JirAXSflDjIcMAeazdVpY/4xA41IlCAY04BXmE2ZYQM=;
 b=HLXr25pRJ7+E8lT4ABwhuNFkxRYpRCgr7hswcSp5Lz4N+xi7/whjxmtqYGZ7KbEIEw
 Fcup+X6OvBpYzpNUAh6zyT5/m3AeG+K+iHjJJKNEWzKsYf8PqPGhUHfyUuESlLkiSda6
 rMA9QOjK3uybOhJ3DKPAODHNWZQv0Y4hHdUTqW3DB7U7vLEYxfmp1SYgVU0MraHxjcFz
 46eeeNtdwLRH2bFiCb2W/gNK7T99wdZm8vPf/VunOX7XX9iHY9N5ju5ZC+DVLn0Ps7nO
 jH1fVjmkejbUkdA4z95OSyqwjq127ae5Jja/zWqxhVrkP0wZUUrUATNA+nEQ352/GE/l
 Ud3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=JirAXSflDjIcMAeazdVpY/4xA41IlCAY04BXmE2ZYQM=;
 b=YY7sCCW9So1USKHEsL3rcfa5tPAjrUPLcAmxcS/3g2P3d3Ungn7c4C9jrXvfwnncvb
 yZuYhYZX9Kp5mvtVD/vQcRWGPTzvsyB8gjkgtCcPHGEtzh9+teErsLHXjpB+9jJQKVEe
 0TNoqKcYDc/WQ9ryWAmXETpA8hIUIc7oCiherF/XWuRGxYoupvrTbxD70cWDZQOHQISb
 GYvH65RE48WXFCOzeinCpnMyqifVnsJnazcYu0JaEeb8PfmZGG0DL9wKW/0HhE0yBRmd
 M/JyyLgvBfByKCFJHOqFIjhuCsY6avO+8vZHCjf6E5SgEnE+lNz8L7AJWMcdC02PgtdO
 ibsA==
X-Gm-Message-State: AOAM533dFMJZkHPIhwZ6Ufs+8+LWyIY4xet+/2VJfPAMyp2otsBeL5eg
 bLiXW6Rm+oBjbVO1VWgt5ZxH1A==
X-Google-Smtp-Source: ABdhPJwnQhLeO0Oq5jMtAfmA/8j65tIDSBH7CNZ4oKjXKDgjfz7o42nBFlklWsUQVUkMrnayVPVZCg==
X-Received: by 2002:a05:620a:448b:: with SMTP id
 x11mr39558492qkp.286.1636379951308; 
 Mon, 08 Nov 2021 05:59:11 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id f7sm10082091qkp.107.2021.11.08.05.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Nov 2021 05:59:10 -0800 (PST)
Message-ID: <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: tharvey@gateworks.com, frieder.schrempf@kontron.de,
 marek.vasut@gmail.com,  jagan@amarulasolutions.com,
 aford@beaconembedded.com,  cstevens@beaconembedded.com, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner
 <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang
 <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "open list:HANTRO VPU CODEC DRIVER"
 <linux-rockchip@lists.infradead.org>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>,  "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Mon, 08 Nov 2021 08:59:09 -0500
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
User-Agent: Evolution 3.42.0 (3.42.0-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_055913_319191_11588DCD 
X-CRM114-Status: GOOD (  29.01  )
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

SGkgQWRhbSwKCnRoYW5rcyBmb3IgeW91IHdvcmssIEknbGwgdHJ5IGFuZCByZXBseSAgYWJvdXQg
dGhlIEdTdHJlYW1lciBxdWVzdGlvbnMgYmVsb3csIGlmCnlvdSBoYXZlIGZ1cnRoZXIgcXVlc3Rp
b24gZmVlbCBmcmVlIHRvIGFzay4KCkxlIHNhbWVkaSAwNiBub3ZlbWJyZSAyMDIxIMOgIDEzOjM3
IC0wNTAwLCBBZGFtIEZvcmQgYSDDqWNyaXTCoDoKPiBUaGUgaS5NWDhNIGhhcyB0d28gSGFudHJv
IHZpZGVvIGRlY29kZXJzLCBjYWxsZWQgRzEgYW5kIEcyIHdoaWNoIGFwcGVhcgo+IHRvIGJlIHJl
bGF0ZWQgdG8gdGhlIHZpZGVvIGRlY29kZXJzIHVzZWQgb24gdGhlIGkuTVg4TVEsIGJ1dCBiZWNh
dXNlIG9mCj4gaG93IHRoZSBNaW5pIGhhbmRsZXMgdGhlIHBvd2VyIGRvbWFpbnMsIHRoZSBWUFUg
ZHJpdmVyIGRvZXMgbm90IG5lZWQgdG8KPiBoYW5kbGUgYWxsIHRoZSBmdW5jdGlvbnMsIHNvIGEg
bmV3IGNvbXBhdGlibGUgZmxhZyBpcyByZXF1aXJlZC4KPiAKPiBUaGlzIGlzIGFuIFJGQyBiZWNh
dXNlIEkgZG9uJ3QgaGF2ZSBmdW5jdGlvbmFsIHZpZGVvIG9uIG15IHN5c3RlbSB5ZXQsCj4gYW5k
IEknbSBob3BpbmcgdGhlcmUgbWlnaHQgYmUgcGVvcGxlIHdobyBkbyBhbmQgY2FuIGhlbHAgdGVz
dCB0aGlzLgo+IEkgaGF2ZSBvbmx5IHRlc3RlZCB0aGlzIGZhciBlbm91Z2ggdG8gc2VlIHRoZXkg
ZW51bWVyYXRlIGFuZCBhcHBlYXIKPiBhcyAvZGV2L3ZpZGVvWCBhbmQgL2Rldi9tZWRpYVggZGV2
aWNlcy4KCkkgd2lsbCBjaGVjayB0aGUgcGF0Y2hzZXQsIGJ1dCB5b3UgbmVlZCBpbiB0aGUgbWlu
aS12YXJpYW50IHRvIGRpc2FibGUgdGhlIEcxCnBvc3QgcHJvY2Vzc29yLCBiZWNhdXNlIHRoaXMg
YmxvY2sgd2FzIGZ1c2VkIG91dC4gV2UgZGlkbid0IG1ha2UgaXQgb3B0aW9uYWwKZnJvbSB0aGUg
c3RhcnQgYXMgYWNjb3JkaW5nIHRvIHRoZSBWMSBvZiB0aGUgVFJNIGl0IHdhcyB0aGVyZSwgYnV0
IHRoYXQgZXJyb3IKd2FzIGNvcnJlY3RlZCBpbiBWMy4KCj4gCj4gSSBhbSBhbHNvIGN1cmlvdXMg
dG8ga25vdyBpZi93aGF0IGdzdHJlYW1lciBwbHVnaW5zIGFyZSBuZWNlc3NhcnkuICBJbgo+IE5Y
UCdzIGN1c3RvbSBrZXJuZWwsIHRoZXJlIGFyZSBJTVgtc3BlY2lmaWMgcGx1Z2lucywgYW5kIEkg
d2FzIGhvcGluZyB0aGVyZQo+IHdvdWxkIGJlIG1vcmUgZ2VuZXJpYyBwbHVnaW5zIHRoYXQgSSBj
YW4gdXNlIHRvIHRlc3QuICBJIGFtIGhvcGluZyBzb21lCj4gb2YgdGhlIGxpbnV4LW1lZGlhIGV4
cGVydHMgbWlnaHQgY2hpbWUgaW4gb24gaG93IHRvIGJlc3QgdGVzdC4KCkkgd2lsbCByZWNvbW1l
bmQgdXNpbmcgR1N0cmVhbWVyIDEuMTkuMyBvciBtYWluIGJyYW5jaCAoR1N0cmVhbWVyIGlzIG5v
dyBhCnNpbmdsZSBnaXQgcmVwbykuIFlvdSB3aWxsIHRoZW4gYmUgYWJsZSB0byB0ZXN0IEhhbnRy
byBHMSBkZWNvZGluZyBvZiBNUEVHMiwKSDI2NCBhbmQgVlA4LiBSZW1lbWJlciB0aGF0IHRoZSBy
ZWxhdGVkIHBsdWdpbiBkZXBlbmRzIG9uIGxpYmd1ZGV2IChhIGdsaWIKYmluZGluZyBvZiB1ZGV2
KS4KCkZvciB0aGUgZW5jb2RlciwgSSBiZWxpZXZlIG9ubHkgSlBFRyBtYXliZSBzdXBwb3J0ZWQs
IHNpbmNlIHRoaXMgaXMgYWxsIHRoZXJlIGlzCm1haW5saW5lIGZvciBSSzMyODggKGFuZCBwZXJo
YXBzIG90aGVyIFJLKS4gQnV0IHRoaXMgd2lsbCBuZWVkIHRlc3RpbmcgYW5kCmRlYnVnZ2luZyBh
cyB0aGUgRzEgdmVyc2lvbiBpcyBzbGlnaHRseSBuZXdlciBvbiBOWFAgU29DLgoKPiAKPiBMYXN0
bHksIEkgZGlkbid0IHVwZGF0ZSBhbnkgZGV2aWNlIHRyZWUgYmluZGluZyBZQU1MIGZpbGVzLCBi
ZWNhdXNlCj4gSSBrbm93IHRoZXJlIGhhdmUgYmVlbiBzb21lIGRpc2N1c3Npb25zIGFib3V0IHRo
ZSBwb3dlciBkb21haW5zIG9uIHRoZQo+IGlteDhtcSwgYW5kIEkgd2Fzbid0IHN1cmUgaWYgdGhl
IGlteDhtbSBzaG91bGQgZ2V0IGEgc2VwYXJhdGUgWUFNTCBmaWxlCj4gb3IgaWYgdGhlIGV4aXN0
aW5nIG9uZSBmb3IgdGUgaW14OG1xIHNob3VsZCBqdXN0IGJlIG1vZGlmaWVkLgo+IAo+IFRoaXMg
d2lsbCBsaWtlbHkgcmVxdWlyZSB0aGUgZm9sbG93aW5nIHNlcmllcyBpbiBvcmRlciB0byBhcHBs
eSBjb3JyZWN0bHk6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4
LWFybS1rZXJuZWwvbGlzdC8/c2VyaWVzPTU3NjQwNwo+IAo+IEFkYW0gRm9yZCAoNSk6Cj4gICBt
ZWRpYTogaGFudHJvOiBBZGQgc3VwcG9ydCBmb3IgaS5NWDhNIE1pbmkKPiAgIGFybTY0OiBkdHM6
IGlteDhtbTogIEVuYWJsZSBWUFUtRzEgYW5kIFZQVS1HMgo+ICAgbWVkaWE6IGhhbnRybzogUmVu
YW1lIFJPQ0tDSElQX1ZQVV9FTkNfRk1UIHRvIEhBTlRST19WUFVfRU5DX0ZNVAo+ICAgbWVkaWE6
IGhhbnRybzogQWRkIEgxIGVuY29kZXIgc3VwcG9ydCBvbiBpLk1YOE0gTWluaQo+ICAgYXJtNjQ6
IGR0czogaW14OG1tOiAgRW5hYmxlIEhhbnRybyBIMSBFbmNvZGVyCj4gCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpICAgICB8ICA2MSArKysrKysrKwo+ICBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAgICAgfCAgIDMgKwo+ICBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19ody5oICAgICAgfCAgMTkgKystCj4gIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMgICB8IDE0MyArKysrKysr
KysrKysrKysrKysKPiAgLi4uL3N0YWdpbmcvbWVkaWEvaGFudHJvL3JvY2tjaGlwX3ZwdV9ody5j
ICAgIHwgIDI2ICsrLS0KPiAgNSBmaWxlcyBjaGFuZ2VkLCAyMzEgaW5zZXJ0aW9ucygrKSwgMjEg
ZGVsZXRpb25zKC0pCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
