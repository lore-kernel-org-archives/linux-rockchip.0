Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E5BEC77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxS/3BbRESY/cxlhXfBDI3CAHyiHr5v012VbmZkzuXs=; b=WhxwGgYQq5SoIt
	2Vg5sPB1blI5GX/0kUHgMKWxY5dOnS5afeFhxQBXuXPZWWeZL7dR9GWll9W70Edwev9sBAdksqDVV
	sU0xvVgl4IFfyTAqyQviN5Q8BILoDX73RAP4LMEP+bYBzhTX44/CrUzgmf0CIdqwacbRrzwlVBBMd
	eoeFZFBU+kErNycfnQPqh12kYdC6OmbecD2n983r2uPCK3Cdfc4uiyWvMUqFwLwglNBDdxRNbB1ts
	MLyDG0ydUzSfUkBKmOYXMnOwOFzG8pt+ntdzyt5QQaiQV4PWyaODZBZr3F1MFJwDeoDOJfLxn2aEi
	CgIXmV2K/BR4905pK2LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2D0V-00GyzU-0O;
	Thu, 25 May 2023 15:36:03 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2D0S-00GyyJ-15
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 15:36:01 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-75b1975ea18so59086985a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 25 May 2023 08:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1685028958; x=1687620958;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bfOYl9Of3AOhAYGhu0IXdioMyXF4FQk+PSO2IbVFd7A=;
        b=HW6Fi/0ouVdalJKexenZnGevdCMn9/EhaJ0yhZubDZeZ2S3oeiBdNgDewpllV3RrnU
         Y4Ks8kz9nYCpgOMCNKXEvX9y+39S1T3jkcS7pzAKG5I4V2uXca3sSncnhoawC5sozcPW
         BiVDOonYjbShGdotzNCU9L74HEI00PXA2xehIPNJZq4ZHSU563q3s8hCLzw2sx6hc7I6
         INWFlRJor6xxZGlHUZmor6MF7aJnejv69YyxIciZyOVyoZoeMpYNX+4aOfJRP495fVgv
         5KrOovELrrt3qx+GwlxiQ3Vve+WY3gGYGS/WP//lNdYIMqxMhsp+77x/niBW22TDsI0/
         Q8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685028958; x=1687620958;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bfOYl9Of3AOhAYGhu0IXdioMyXF4FQk+PSO2IbVFd7A=;
        b=fY5cXkV4jc+LKgU5ylfL5mJSid5EM8w4zjQPxnfZPfoiU0TsxSh/l/V+cHTDdLlioo
         U9LnjR5HWd4dDjCB9pmDfm0Rvd9vqLfSgo7JdCUYPoU3ixPyJ0bn3+6H6jr9ojeS5EO/
         bzvlxjAuwR+ueT3NvxKiK/lgysPASMuelwo3EWdsuCJyrPJe+t+SGB7sI7vchPEUfZK9
         A9jpH9kzOMrlTEHMzAhBZi1feF2zy/EXfTQ/MiI80kZvgdh1u5cJ9pIr8fKwhue73gqd
         W+TmA3J1j2IRFO+KGeeTaXfNMoiTLtItjnQIgZn9xnCkWSuylB4xsjdTBEgGjW5EnsCs
         SKBQ==
X-Gm-Message-State: AC+VfDz9QVn4vozQwwbC9Xa8PJF3LdxJQwGvlzV37Y+NNhCOY+yQA5pK
	b0H1WWFtYueVo8y3kt9DfcSsNNSApooKzVbLZTc=
X-Google-Smtp-Source: ACHHUZ4p0kYXueIRcRgDA5TqNXoCPrji9giBre9XHeYYL0MTfM1HpzC35WspVsTKetriJZzqelNaLA==
X-Received: by 2002:a05:620a:8e87:b0:75b:23a0:e7b7 with SMTP id rf7-20020a05620a8e8700b0075b23a0e7b7mr9715250qkn.24.1685028958039;
        Thu, 25 May 2023 08:35:58 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6c0::7a9])
        by smtp.gmail.com with ESMTPSA id w9-20020a05620a128900b0074e389245e6sm471558qki.41.2023.05.25.08.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 08:35:57 -0700 (PDT)
Message-ID: <c9539387beb6e06aed4994cbd8c60abe2a2c45e4.camel@ndufresne.ca>
Subject: Re: [PATCH] media: rockchip: rga: use v4l2_m2m_buf_copy_metadata
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Tretter <m.tretter@pengutronix.de>, jacob-chen@iotwrt.com, 
	ezequiel@vanguardiasur.com.ar, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Date: Thu, 25 May 2023 11:35:56 -0400
In-Reply-To: <20230523090309.3323983-1-m.tretter@pengutronix.de>
References: <20230523090309.3323983-1-m.tretter@pengutronix.de>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_083600_375118_ED23C4E5 
X-CRM114-Status: GOOD (  10.96  )
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

TGUgbWFyZGkgMjMgbWFpIDIwMjMgw6AgMTE6MDMgKzAyMDAsIE1pY2hhZWwgVHJldHRlciBhIMOp
Y3JpdMKgOgo+IFRoZSB2NGwyX20ybV9idWZfY29weV9tZXRhZGF0YSBmdW5jdGlvbiBjb3JyZWN0
bHkgY29waWVzIHRoZSBtZXRhZGF0YSBvZgo+IHRoZSBidWZmZXIuIFVzZSB0aGF0IGZ1bmN0aW9u
IGluc3RlYWQgb2Ygb3Blbi1jb2RpbmcgdGhlIG1ldGFkYXRhIGNvcHkuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+CgpSZXZpZXdl
ZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCA1ICst
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+IGluZGV4IDY3ZGNm
MjJlNWJhMy4uZTRiOGNlOWFiM2M2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmMKPiBAQCAtNzYsMTAgKzc2LDcgQEAgc3RhdGljIGlycXJldHVybl90IHJn
YV9pc3IoaW50IGlycSwgdm9pZCAqcHJ2KQo+ICAJCVdBUk5fT04oIXNyYyk7Cj4gIAkJV0FSTl9P
TighZHN0KTsKPiAgCj4gLQkJZHN0LT50aW1lY29kZSA9IHNyYy0+dGltZWNvZGU7Cj4gLQkJZHN0
LT52YjJfYnVmLnRpbWVzdGFtcCA9IHNyYy0+dmIyX2J1Zi50aW1lc3RhbXA7Cj4gLQkJZHN0LT5m
bGFncyAmPSB+VjRMMl9CVUZfRkxBR19UU1RBTVBfU1JDX01BU0s7Cj4gLQkJZHN0LT5mbGFncyB8
PSBzcmMtPmZsYWdzICYgVjRMMl9CVUZfRkxBR19UU1RBTVBfU1JDX01BU0s7Cj4gKwkJdjRsMl9t
Mm1fYnVmX2NvcHlfbWV0YWRhdGEoc3JjLCBkc3QsIHRydWUpOwo+ICAKPiAgCQl2NGwyX20ybV9i
dWZfZG9uZShzcmMsIFZCMl9CVUZfU1RBVEVfRE9ORSk7Cj4gIAkJdjRsMl9tMm1fYnVmX2RvbmUo
ZHN0LCBWQjJfQlVGX1NUQVRFX0RPTkUpOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
