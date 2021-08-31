Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C178C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 19:19:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 301EF61075
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 19:19:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 301EF61075
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3d/GD2OmL2QrMKiu2AfK3Py2dVEYnZ4DLmPOwaDayI=; b=0YbRbCgQSu6WaU
	W03hPdhurMk04Vq0H0ZkEsmxYqrfoctnNwdMWy1inappmVxBkBB6fpgSOeMMaqmQU2w7AwmBIZg79
	2lupT/alFWflYndTvxKIgFVoFTF+BG7wexcf0BC+XuM/9/4++tuuQqgZ21NuH5BYbvI7qkT+DG4mY
	1rzx/l3/NuBe3bGV5e4O0wQH0UagB/ErVfB4XjN3SFPUGi4/7x3TpVkvJb0SSclHcCViurZ7HyYmC
	n224CQE5a7qtqQL8GzXtTInvGbvUzRV6JLEqjrlNJTBn4YHxQ9naAVG4GOVbaCGw/jzsUdSnT9kHB
	ygUWg3qCifV3wyrXyNIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL9II-0031Bb-40; Tue, 31 Aug 2021 19:19:38 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL9I5-00319a-9m
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 19:19:27 +0000
Received: by mail-io1-xd33.google.com with SMTP id g9so121525ioq.11
 for <linux-rockchip@lists.infradead.org>; Tue, 31 Aug 2021 12:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=BnfnduHx3i2X80cz742KibQtwDjAziOnxR1dEDNguNQ=;
 b=k8Uq/xSxlaLj3DJmwHqi3zi23+XTDI345vnvhN5QS8pnpgx8a0Q49xhD5D4KS8+DLC
 gtYdQDcKGi80NEfOReWj/tPYUGw6JOZLDane/KBJPXnNoHM9WB2/1f+riot8p/HOeB7G
 u8BARTX9hRBylvw5eZW2vgu6vn4Si0ptrSmEEckvMh4M/81RefCoqC1u5cM7rBtbBLNs
 z5Hpha8wYRq/8xulDm1+MfqK4W0ggyxAhzcul7WLDxCMRZq6YH10Lb4hjPT1rOlWa6Nc
 WC0yq2hPUZ3DtgBpKPenD7oBZyvF3EX39LxtgC0rOpCGm8b2Itupimky3nERNn1xhvv/
 A1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=BnfnduHx3i2X80cz742KibQtwDjAziOnxR1dEDNguNQ=;
 b=GO0ImraLQZX8hUi6Zc+fno75QzYAXn/1i+8aFMHI7evo8BvKPkYXptCBrZerYvVtWZ
 iBWxB0Xvrp7G9KP0ATD8fmQ/M4HZlL4qiZNHAyA24yG16H6RAHsj4ekgQkVEDllkwuia
 SqTQK4i83jRCpnPzegilcFs640lY3btDkrT1EHRiWIfzpF18ERKXzRUfnxUo+R2Cj7qJ
 o2Np+9UMBrFC6quuQTgyRCoGBwOPyhNni+0Vad/enZgr5htj3XQySq9xzEJcwh4cFWs0
 mojEXe5Ru0yisfjOqBtfvOk/N08kY+YW7n+4nlwGZSIopQfwLs5ydXwVJjvP2EG9AhxU
 je6g==
X-Gm-Message-State: AOAM533su53ACyhra9+pFwqsTC4QmVXj3kK2QTqYv87RHiKHpVZl76Gs
 3F+8hYks4jmhUKZvMLQTfunJJA==
X-Google-Smtp-Source: ABdhPJzLpm8haUqn3kfzyuXtg4CiQZwskLDtRsRbptxnszVRu77+8NA0/wO490W6qNwD3GPt10CQDw==
X-Received: by 2002:a02:2348:: with SMTP id u69mr4216099jau.141.1630437562446; 
 Tue, 31 Aug 2021 12:19:22 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (mtl.collabora.ca. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id
 c23sm10143469ioi.31.2021.08.31.12.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 12:19:21 -0700 (PDT)
Message-ID: <1484b5ebb9c943c72d7d7a0481c1a2cd9899705b.camel@ndufresne.ca>
Subject: Re: [PATCH 0/2] media: HEVC: RPS clean up
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com, 
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Date: Tue, 31 Aug 2021 15:19:19 -0400
In-Reply-To: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_121925_372047_0C017E87 
X-CRM114-Status: GOOD (  11.99  )
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

QXMgcGVyIGRpc2N1c3Npb24gd2l0aCBFemVxdWllbCwgSSB0aGluayB0aGlzIHBhdGNoIHNob3Vs
ZCBwZXJoYXBzIGJlIG1hZGUgYW4KUkZDIHRpdGxlZCAibWVkaWE6IHVhcGk6IGNsZWFuIGFuZCBt
YWtlIEhFVkMgdUFQSSBwdWJsaWMiLiBLZWVwIGl0IFJGQyB1bnRpbCB3ZQpoYXZlIGNvbGxlY3Rl
ZCBhbGwgdGhlIG5lZWRlZCBjaGFuZ2VzLgoKT3BpbmlvbiA/CgpMZSBtYXJkaSAzMSBhb8O7dCAy
MDIxIMOgIDExOjQ4ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBhIMOpY3JpdMKgOgo+IFRoaXMg
c2VyaWVzIGFpbXMgdG8gY2xlYW4gdXAgUmVmZXJlbmNlIFBpY3R1cmUgU2V0IHVzYWdlIGFuZCBm
bGFncy4KPiAKPiBMb25nIHRlcm0gZmxhZyB3YXMgbmFtZWQgd2l0aCBSUFMgcHJlZml4IHdoaWxl
IGl0IGlzIG5vdCB1c2VkIGZvciBSUFMKPiBidXQgZm9yIG1hcmsgbG9uZyB0ZXJtIHJlZmVyZW5j
ZXMgaW4gREJQLiBSZW1hbmUgaXQgYW5kIHJlbW92ZSB0aGUgdHdvCj4gb3RoZXIgdXNlbGVzcyBS
UFMgZmxhZ3MuCj4gCj4gQ2xhcmlmeSBkb2N1bWVudGF0aW9uIGFib3V0IFJQUyBsaXN0cyBjb250
ZW50IGFuZCBtYWtlIHN1cmUgdGhhdCBIYW50cm8KPiBkcml2ZXIgdXNlIHRoZW0gY29ycmVjdGx5
IChpLmUgd2l0aG91dCBsb29rIHVwIGluIERCUCkuCj4gCj4gQmVuamFtaW4KPiAKPiBCZW5qYW1p
biBHYWlnbmFyZCAoMik6Cj4gICBtZWRpYTogaGV2YzogUmVtb3ZlIFJQUyBuYW1lZCBmbGFncwo+
ICAgbWVkaWE6IGhldmM6IEVtYmVkZGVkIGluZGV4ZXMgaW4gUlBTCj4gCj4gIC4uLi9tZWRpYS92
NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCAgICAgICAgICAgICB8IDEyICsrKystLS0tLQo+ICAuLi4v
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgfCAyNyArKysrKy0tLS0t
LS0tLS0tLS0tCj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5j
ICB8ICAyICstCj4gIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAgICAg
ICB8ICA0ICstLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMxIGRlbGV0
aW9ucygtKQo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
