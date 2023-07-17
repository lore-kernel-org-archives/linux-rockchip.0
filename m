Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C143EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 15:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTBjgvXuJzyebEof8o1l9VbHK8sspqESsktmoflRHlw=; b=asLJExBPJrNjqK
	HIMnmltL8VR9m4gGh1DQbOICmq1GbRzEbV3DsCeNcL6Cc331ffxDp1AIjiUO9CY4AKljA1ez5cRW9
	/fNhVYMOmp3OVL3OU42ods4TddzBm3evy7wA5cZUjNdww0ypd5mIuvb0x0npiufJszNi1I74Tl+E9
	vmchkH+EPApMEeXyfnHjoEQinkESUyMl1nOrI+IGx77XcsLz+5NQiAKLeeva13C6+REWF6HETVBhN
	y9kKGofalw0mkoRgu77IonWeynoniIdXdw26q1SxmGfCByIQZSa2peDllDNd1+1XSjEUyztIM1gZr
	GSqpYOcip0amOsvInSWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLQPg-004RMe-1e;
	Mon, 17 Jul 2023 15:45:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLQPd-004RI3-0o
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jul 2023 15:45:26 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:11:83d4::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 85E7B6602329;
	Mon, 17 Jul 2023 16:45:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689608714;
	bh=nfXpPEOOT+DQxYAty6Ka9OIALcouR/KYehklbnLoYLM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=akO6ybvYtgpoWKI83h/6uRWK6loma3uiqETg9r7daQEK0m9x41dnp17GBuP3YnMDH
	 Ed/giYV5SvqTNjnzYTbMhZVtYpXdYbr0+Nqd6lQZ1NuofLlXGrBTRVMF7TTE8ZDk1n
	 AFzPkNujdIg/SoV8zg7N3m3si82UkDxH2Vs6itu+taJw5c6TuJr+zfMmAScm9wOOG/
	 EERmNTPXzyT030KVtxGAmxzpTKZoRuDc/SMpxwNrN1vxPvZi0+2UW3s0MnRg9mlx38
	 3sCttwOzmSGXBkosxVFKN0fC6nzmhX/f/GB/3Knzq87BBvO9uoYnbok+nXgGNHQpkB
	 iYdf5U2HHJ0bg==
Message-ID: <7046e828625a2acd97c48aec9f3b0ef0cc4930ed.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: increase max supported height for H.264
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Mon, 17 Jul 2023 11:45:04 -0400
In-Reply-To: <20230717150611.42832-1-benjamin.gaignard@collabora.com>
References: <20230717150611.42832-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_084525_438262_7DB840BC 
X-CRM114-Status: GOOD (  11.39  )
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

TGUgbHVuZGkgMTcganVpbGxldCAyMDIzIMOgIDE3OjA2ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFy
ZCBhIMOpY3JpdMKgOgo+IEFmdGVyIHRlc3RpbmcgaXQgaXMgcG9zc2libGUgZm9yIHRoZSBoYXJk
d2FyZSB0byBkZWNvZGUgSDI2NAo+IGJpc3RyZWFtIHdpdGggYSBoZWlnaHQgdXAgdG8gMjU2MC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRA
Y29sbGFib3JhLmNvbT4KClRoYW5rcywgdGhpcyBjb3VsZCBwb3NzaWJseSBoYXZlIGEgRml4ZXMg
dGFnID8KRml4ZXM6IGNkMzNjODMwNDQ4YmEgKCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIHJrdmRl
YyBkcml2ZXIiKQoKV2l0aCBvciB3aXRob3V0IHRoZSB0aGF0IHRob3VnaDoKUmV2aWV3ZWQtYnk6
IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0t
Cj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAyICstCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IGluZGV4IDEzNGUyYjlmYTdkOS4uODRhNDE3OTJjYjRi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gQEAgLTEyMCw3ICsx
MjAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyBya3ZkZWNf
Y29kZWRfZm10c1tdID0gewo+ICAJCQkubWF4X3dpZHRoID0gNDA5NiwKPiAgCQkJLnN0ZXBfd2lk
dGggPSAxNiwKPiAgCQkJLm1pbl9oZWlnaHQgPSA0OCwKPiAtCQkJLm1heF9oZWlnaHQgPSAyMzA0
LAo+ICsJCQkubWF4X2hlaWdodCA9IDI1NjAsCj4gIAkJCS5zdGVwX2hlaWdodCA9IDE2LAo+ICAJ
CX0sCj4gIAkJLmN0cmxzID0gJnJrdmRlY19oMjY0X2N0cmxzLAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
