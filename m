Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22D50EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 14:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTM9kxP29fFI/M+gISZqK7gvKsxhUcsAEaKArBofJbI=; b=o1wlsZQjt5VQ9I
	+jxIN9J2FKEBXXOI1GRSeOLHWWNOu4szC8pOhfHzyeFEK9jpbwa9DBr9INrSduBWvSYdp0kes5S6T
	u0Y0newJ6WG4d7fKqhNMrpczVBUl8dqZoGuKysSnqis+JHUVMsQKhfwpTONCZF0Ub/ePNh0VfYtv0
	V/7Z+fb19AgJuUuISzg6LzS6NAQdiWvpGrDtPogukg20k5sUvvOCpT7oKX85fY7VWGn3AN/AePo3D
	o7U6MrwwET20M027KO1Kbw9Lb6RUCNMbVTQeyvWphZ/rVWTY/GZEVryB+/eVvwc9rjuZiTHnFgUG0
	JZ9U5XHhNr2eX1A83UgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCLmV-00144g-01;
	Thu, 22 Jun 2023 14:59:31 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCLmP-00142u-2T
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 14:59:29 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-62ffe4cabecso54139956d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Jun 2023 07:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1687445963; x=1690037963;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Isuz+PQC54uI8U8TsiSi06GVeERGmJj43Np0iyUSrfM=;
        b=dmVv7bPr5iFp2PUKG6EmeBdAvXmiNR3KSnBPMouO1pNeZnqvux25rfVgFEEX5hqouj
         OEGTfONT4p8xLmJry1j+R04ZUSfHyXJ5jsOt7BkNXERYpD+kht6v4kNsqr38BirdMdNO
         zYYiJ0yTibnj1K1cCUGI88zgdWBtGUFcMwpRqgKa3zzE/8D6RwxzYXfl1AyzCCytdAj0
         ApZG9gmNwaHGnADQWCLl0lJC7DpWd1y/X8SrgrXikkIcGr4plRyzZe4XUb6yg2WezDZU
         guwfPZmzi8hqGmJPm8P1ICL4lziruJGt0uOzaKszwzj/8x/fdwjsNWh716DfhXK2yYod
         LdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687445963; x=1690037963;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Isuz+PQC54uI8U8TsiSi06GVeERGmJj43Np0iyUSrfM=;
        b=Y8pn2/GmQXzYYEppCQaLF2ZLdS/rg5ar4yNYb9UMzF3BiSNe+JlVCHyuocTl9eCROa
         tyUf5E6HrSgr2cZXNc0lv/2OGdktnZ2DVRSt7asajYdmDokIZ8jg0MNIpPTXj3a+EUgk
         5piEThAh1Fxzs1nlz0bYkSkD4QPJP1/Ts2x1An1TzgMD8dYfL5rqxVFUhZX2QoHeA6VL
         zsTNOHHEjEWVQduZ87xNx/QtgLXodGfgZOU24CDG/sAN+AsBJrEYs8eaIfTbkpMaQVg4
         9FosnoMA6orv9QKxLJZiUhI2Lyso4JliYgcpM5RGZSUddmMrRX6uT8ZqeBp6GZoJoJ1x
         xU+A==
X-Gm-Message-State: AC+VfDyh6Uq409fbsS55kgQnStKO7aRanWqZmMbE0cu29Q2IzLm5aDG/
	MmGnEFLx9bNlDQ6t+/uMgusV0w==
X-Google-Smtp-Source: ACHHUZ5/R7baqHiN/5RHfljGCs+0RFR1fPdQ92oThBDCni214Ka5UIUJV9e4OiaFi5zT6J8G8DBvbw==
X-Received: by 2002:a05:6214:e4f:b0:626:3a98:95a with SMTP id o15-20020a0562140e4f00b006263a98095amr21177614qvc.22.1687445963256;
        Thu, 22 Jun 2023 07:59:23 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:c623::7a9])
        by smtp.gmail.com with ESMTPSA id b9-20020a0cc989000000b0062821057ac7sm3891746qvk.39.2023.06.22.07.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:59:22 -0700 (PDT)
Message-ID: <873a993dc0e4cc9249593bca494ed25e1d0b7fa8.camel@ndufresne.ca>
Subject: Re: [PATCH v2] media: rkvdec: removed redundant blank line
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Emma Christy <emma.t.christy@gmail.com>, ezequiel@vanguardiasur.com.ar, 
 mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org
Date: Thu, 22 Jun 2023 10:59:21 -0400
In-Reply-To: <20230621154247.43983-1-emma.t.christy@gmail.com>
References: <20230621154247.43983-1-emma.t.christy@gmail.com>
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_075926_008168_37BF975C 
X-CRM114-Status: GOOD (  12.39  )
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

VGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gZml4IHRoaXMuCgpMZSBtZXJjcmVkaSAyMSBq
dWluIDIwMjMgw6AgMTg6NDIgKzAzMDAsIEVtbWEgQ2hyaXN0eSBhIMOpY3JpdMKgOgo+IEFkaGVy
ZSB0byBMaW51eCBrZXJuZWwgY29kaW5nIHN0eWxlLiBSZW1vdmVkIHJlZHVuZGFudCBibGFuayBs
aW5lLgo+IElzc3VlIGZvdW5kIGJ5IGNoZWNrcGF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogRW1t
YSBDaHJpc3R5IDxlbW1hLnQuY2hyaXN0eUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogTmljb2xh
cyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiBDaGFu
Z2VzIGluIHYyOgo+ICAgLSBGaXhlZCBTaW5nZWQtb2ZmLWJ5Lgo+ICAgLSBGaXhlZCBTdWJqZWN0
IGxpbmUuCj4gCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLXZwOS5jIHwg
MSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLXZwOS5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMtdnA5LmMKPiBpbmRleCBjZmFlOTliNDBjY2IuLjBlN2UxNmYy
MGVlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy12
cDkuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLXZwOS5jCj4g
QEAgLTIyNyw3ICsyMjcsNiBAQCBzdGF0aWMgdm9pZCBpbml0X2ludHJhX29ubHlfcHJvYnMoc3Ry
dWN0IHJrdmRlY19jdHggKmN0eCwKPiAgCQkJCX0KPiAgCQkJfQo+ICAJCX0KPiAtCj4gIAl9Cj4g
IAo+ICAJZm9yIChpID0gMDsgaSA8IHNpemVvZih2NGwyX3ZwOV9rZl91dl9tb2RlX3Byb2IpOyAr
K2kpIHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
