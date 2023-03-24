Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF4BC6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 09:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiDe3tcNkoE1XaRUczuQGfpwu2xEW8TBeIsYEUPPB00=; b=EwGM412yiONbC4
	JBds6YN6XPP99af1fbQIGxbXfttRFTNi9g/fpNEiz9msWYlFLiXDcQ9CETHLxNNBG5KYYLHxiNRIm
	zQljvfuyFRieE5+ZxhILJBmJAQbJyCSmssyaaSwb5UYeBZyJypJ68exM7c6k1O9FQtImAt6bME7+D
	SVhAksu+fvdhFm7QiBvBvzS1/7DJrV1a/D6ZH7N+LDEb7GWl9nSDHNhvQKiJ4RzEd/j74dEDkoQzA
	T+dgpmsOB2zfqU4fvMIJ8oG/ZyWQKoGMxANo5/q9EeDRes5j9TpIDrrNuFBrVV/p3jhkWsP3CLRfI
	cuh6joJLcDM1HBL8Jgdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfe9F-0045si-1N;
	Fri, 24 Mar 2023 09:55:49 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfe9B-0045sC-2B
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 09:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1679651737; i=markus.elfring@web.de;
	bh=VQz7vLVGIDvnjjCHVk4OrQk/q0+cI50cbn873j/5l3k=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=suh5EKTaiTCwbKuuMtxLqnfUvDZff4Mrriku1guTsa0wRdlavSmcFH7VT+a841Yfa
	 6T5twJYl+zq29/27DY9/QGhbXE3lEYuUVCkUeWMBAvpq+559i1eLWAdWZivBpHc4Gx
	 1+fnZxRUyWtLs+8kBSCtYkfLx07eM09pqF1nLqMtONfF8KTuwXZkRF77S4MFhdf20L
	 yRUR7SKahUhgovwIU3DzfhP+cUBIy2mNBAToxU1zE7xYMZknTHRlfQiDEnshFT5FMU
	 kjSVbDVoH1J0iuQa+VjITfLejK4iHVOqe0a+XauE6n4i57sZksMBkIlXLjPgwDJN0R
	 ZLxeneN7+Llig==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.81.83]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MumJF-1qWmd941zP-00rN0O; Fri, 24
 Mar 2023 10:55:37 +0100
Message-ID: <98f7a85c-e752-8f40-f658-198e42518343@web.de>
Date: Fri, 24 Mar 2023 10:55:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: media: verisilicon: Simplify error handling in
 tile_buffer_reallocate()
Content-Language: en-GB
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel-janitors@vger.kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
 <69159492-dced-a082-5f7e-3d8d0e880f58@web.de>
 <bb638f1a-9d13-7331-9190-7470e98d05f7@collabora.com>
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <bb638f1a-9d13-7331-9190-7470e98d05f7@collabora.com>
X-Provags-ID: V03:K1:stwL+8LhwfnGrZe7tj8wvwExfbT+vx+905DZEnKb8tDYMGMY7b1
 CUOe+yK6u/Uwjp0UYNGoo0XB78qKqO5JeJ5EA/8KQhzoMOlzV7SPi8HVtxHLaA2U57eGR2J
 sIM8pBpOIFADYEOdcftfCCkfq9FLZUNUPnS27ACd1AzBQuayPn0Yvj4LeMVrWjRjm31iJkh
 PwJTkFbC3idUSM4YONbHA==
UI-OutboundReport: notjunk:1;M01:P0:TQRo6/qNPRc=;O+KUw7wV/alhkQuZvF7ZX3hcUnO
 9HlQU1LocxHonGXmAUyyo1PQVgYTjD5zz270I5YjNbL+aLtemghGyZwOztTPW6PiVD36x+NIs
 ggfZeB0cGQs5p/ju6sfQqGczIHXpKBd+coNNMbyFSGPMXF8sLQ5vcdlX5YKq7uvrQ397b1JZE
 qHVw65J6vf7LBTr0CvSz1xK9lSv8IgbnydK1OmEUyP1gwKcHuDlg2qkMzhz6sbll55p5YX1CJ
 hwAxg9KUnu94pn4VTyLorEM1piWHJw3ZKuWwV2Ua6JIRZoy7K2R2cNCeTgV83MpGm92Kn8oLv
 VdBAGogVnsP1BO4BbE41qjAQDiJsxZ6U/UwOpXJK7vL+ppinK/WI1YLB/HRHt6N/1GPLQ3f0F
 VZqJINPFjLcBpDPAzb+InlIaf6vMA9E4NhNc1lxjgNGvDh0RL5dp1ZK2Rl3YnWkGPGAw421eI
 HFsE5SiV4tYwrMsrjgFwi/TXfzZTdpVXvRMbcnhXVbYeq4UOAhXyPwDNi58uRPPZfx517K5P4
 7BO7bq1ct8xxCbdnmDa5RLyNFTHOmZ90gvJ6LPPBTDKiHAUxZUiSk2UEb6c2hbbutLnlWq3Bs
 nr04xOFlfPTKxWbEzPVjVuOyk65D1Luk4958jqQj2JJx2L++a489eVsjHSWLv7iSnUbtUmcK/
 VGyV9s9lZJqsNUHqSJwIyc/iXehKs3I1eLOq8/bdzPz1gY6lCo9aaesQm0/G18QlOogUDhczm
 PqvfwdM+kqhTIrdkqocPrrSQ8gdtp00AMDDtk4y6EFBDB8jY8ieZU69R78IaEh5O7Gg5AckPZ
 70Nelu5N3+0ctIcu7nOmblgQ9hBv2brdKWJ81VAUjmggJ19bEzA58a73oKFHPth+P3zyBgGBU
 GeCB8pKt3SDdiDWljARaum4tzSW7QrTy41uA7H6MpunWtvdY4fjSJVsTO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_025546_172456_5DAE1082 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
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

Pj4+IFJld29yayBhbGxvY2F0aW9uIGVycm9ycyBjYXNlcyBoYW5kbGluZyB0byBzaW1wbHkgaXQK
Pj4+IGJ5IHJlbW92aW5nIHVzZWxlc3MgdGVzdHMuCj4+IEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQg
dG8gdXNlIGEgd29yZGluZyBsaWtlIOKAnFNpbXBsaWZ5IGhhbmRsaW5nIG9mIGFsbG9jYXRpb24K
Pj4gZXJyb3IgY2FzZXMgYnkgcmVtb3ZpbmcgdXNlbGVzcyB0ZXN0cy7igJ0gZm9yIHlvdXIgY2hh
bmdlIGRlc2NyaXB0aW9uPwoKSSB3b3VsZCBhcHByZWNpYXRlIGFub3RoZXIgYml0IG9mIGZpbmUt
dHVuaW5nIGZvciBzdWNoIHRleHQuCgoKPj4+IFJlcG9ydGVkLWJ5OiDigKYKPj4+IC0tLQo+Pj4g
wqAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oZXZjLmPCoCB8IDIzICsr
KysrKysrLS0tLS0tLS0tLS0KPj4gV291bGQgeW91IGxpa2UgdG8gYWRkIGFueSBsaW5rcyBmb3Ig
Y29ycmVzcG9uZGluZyBpbmZvcm1hdGlvbj8KPgo+IE5vLCBpdCB3YXMganVzdCB0byBzaG93IHRo
YXQgeW91IGhhdmUgcmVwb3J0ZWQgdGhlIHBvc3NpYmxlIGNsZWFuIHVwCgpJIGltYWdpbmUgdGhh
dCBhIGJpdCBvZiBiYWNrZ3JvdW5kIGluZm9ybWF0aW9uIHdpbGwgYmUgaGVscGZ1bCBpbiBhIHRh
ZwpsaWtlIOKAnExpbms64oCdIGFsc28gZm9yIHlvdXIgcGF0Y2guCgoyMDIzLTAzLTIyCltQQVRD
SF0gbWVkaWE6IGhhbnRybzogSEVWQzogRml4IGV4Y2VwdGlvbiBoYW5kbGluZyBpbiB0aWxlX2J1
ZmZlcl9yZWFsbG9jYXRlKCkKCkV4YW1wbGVzOgoqIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Nv
Y2NpL2VhMTEyZmRkLTdhZjAtZDFmMS00NDJjLTMwNmU2ZWM1NGE1YkB3ZWIuZGUvCiAgaHR0cHM6
Ly9zeW1wYS5pbnJpYS5mci9zeW1wYS9hcmMvY29jY2kvMjAyMy0wMy9tc2cwMDAzNy5odG1sCgoq
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvNWQ1YzhjN2ItYjkyNi04Mzk3LTc5OTQtNjIz
YWM5YjM3ZTgzQGNvbGxhYm9yYS5jb20vCgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
