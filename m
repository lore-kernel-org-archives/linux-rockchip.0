Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F09E0D6A22D
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 20:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXxw6W9p3IsYY1LTM06jyIaT72t9HO4Jkw+NO6VQrHo=; b=m8UCnvWiL+fI8d
	YWla/ETF1nGTsAP/pAgUreBc1MXzrRXpO/uKYXUVMerP5xMy98jqPQn/pOeGbErJC3vIxSb57H3sb
	8q0A715TuH8FFmwKf0RzfJm6SjhqQy1fSaJGejeascnYlqStrxLAOL8CoVvulgUh96fYYfE9AjZrk
	qQf8rvOQKjRxqKHAg1A0hxCbFNuH/iDKwDW8kkM6sXdKL/n3pTrtrlqhEV+3EtzZ7TbkSmmV66ImP
	2b/4MH2BVaUNpZWXL51BoiZxqvnel5p/EOYbL4g0j8JC746pRWhdrHFWM2eN9hw0aXN2eguGI0l4G
	LFKxwrhjHHB8fI/e3xZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBguj-00000000p0Q-2R30;
	Thu, 14 Nov 2024 20:58:05 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBgtn-00000000okA-0MIi;
	Thu, 14 Nov 2024 20:57:08 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-460e6d331d6so6510101cf.2;
        Thu, 14 Nov 2024 12:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731617825; x=1732222625; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FENYyNK4vC//y2A9AUuY/xTIkgQJ19w0WgQKxb08jVc=;
        b=CsfI2sSfOjWzrSuqvvM3Cn7lJxQ9Tb4/BZ0sqsv1wLCguIaQEiSR7y7nM4+uO/X7BW
         WbRJLwl0yFhJla19I0tML/grQXAFMzPX+yH7pxq3Pv7GTaFU39ypTvj7jMUn26VgzS6f
         tm/H7BFC+HYXGr64B9QiTCfMEIJk34lQh2FIjbJrMau2mdAovR5IWfB8JRG4OIXmUe6z
         8uyiGbopu5xl24vuwpJiA2S4NxSOdmcvXFkPzMgV5J7CjxprjiNJfKxDiI9KyZp1tIUi
         SYjQam3mUV1F/sKOR70fPGjt9lnCqgM5A8G676iSKwjBVPQhOpSW/GyP3A/BfCxgmqEs
         GoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731617825; x=1732222625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FENYyNK4vC//y2A9AUuY/xTIkgQJ19w0WgQKxb08jVc=;
        b=wPN3JH9TcIxFiYEoF8E/4DYS5dMHsnoAgoWmndj6lrEfuaAD9pmLlvD2i+Zjd8s+1t
         tfFrzs+kYDfpW1AS86Q/8x00wsQE78/aIxFMeYs7U8w15ZdSvZjCbCkfLU4xs49cgkRe
         Sr64+nFeL6jTmHIc9Dh8O9LRBlik/eVnQ14tglSs+8BLj7tPYLOTpEDQ541gYI2f4wb5
         LRXTQGjQiZCxl+RImG5pdZ/WYu7q3yd5T6kwg8cIyn+ePgyR1+g7BJ+sV5Nwvi6a93aF
         ZeQNS2ZLzsRl5JN7sOIozEJcjCp1rXDlc0utftcApHbdY3jgE8qu3HR78u9I240H3e2Q
         BMYg==
X-Forwarded-Encrypted: i=1; AJvYcCVPc0czl6c+aus+bJ+Lbo8NzJrtYliv7tyDt/qnDHK0L1rjSGhA4TPs49rbx3zpCZ9OzhQMNuUt/hCcg/gKMYI2@lists.infradead.org, AJvYcCWbNHJKaPJ4zpst+N533BvvXFMFeSHbHeifqVA8UeAIf03OHlnrzaWtrKkxjhxMZ/vlJgEwLfJkwn+7UYAyJXg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyO3joO/iAmvNBF3Kbj3l3dtj51M8ri7bfKsxeB87vm2WHhDMCX
	7hK+Vk3R34a1vRndFup8v+ZYmGOF2ynt017n9TRGjCZ/5r9Zf5UG9gcOYojORcqfJHhmkGZIdja
	6K6IduHUZoVd79OyIo33fhMAwZpo=
X-Google-Smtp-Source: AGHT+IGIofF+jHyf1Q1A5YmkDMwujZlkcq6NnhCTWVq9V58kJK2WdBuo4vqtDJAoF6p75Moc+Y23OIWYQYIEYzK+XIc=
X-Received: by 2002:a05:622a:1c06:b0:461:2150:d59f with SMTP id
 d75a77b69052e-46363debe66mr3045871cf.8.1731617825253; Thu, 14 Nov 2024
 12:57:05 -0800 (PST)
MIME-Version: 1.0
References: <20241107211428.32273-1-jiashengjiangcool@gmail.com>
 <20241107211428.32273-3-jiashengjiangcool@gmail.com> <zd5673eo7kqwg67lsy6h3m4zdpmgp5xzhr355ialwx6zhdopfb@7x3v5b747sqn>
In-Reply-To: <zd5673eo7kqwg67lsy6h3m4zdpmgp5xzhr355ialwx6zhdopfb@7x3v5b747sqn>
From: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Date: Thu, 14 Nov 2024 15:56:54 -0500
Message-ID: <CANeGvZVibHOsqdD+zw_u2yswJdvUu=Ssep9eWeAOcqmg6J-zqg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] i2c: rk3x: Add check for clk_enable()
To: Andi Shyti <andi.shyti@kernel.org>
Cc: dianders@chromium.org, rmk@dyn-67.arm.linux.org.uk, max.schwarz@online.de, 
	david.wu@rock-chips.com, heiko@sntech.de, vz@mleia.com, wsa@kernel.org, 
	manabian@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_125707_121388_B95405E2 
X-CRM114-Status: GOOD (  20.52  )
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

T24gV2VkLCBOb3YgMTMsIDIwMjQgYXQgNToyNOKAr1BNIEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSBKaWFzaGVuZywKPgo+IE9uIFRodSwgTm92IDA3LCAy
MDI0IGF0IDA5OjE0OjI4UE0gKzAwMDAsIEppYXNoZW5nIEppYW5nIHdyb3RlOgo+ID4gQWRkIGNo
ZWNrIGZvciB0aGUgcmV0dXJuIHZhbHVlIG9mIGNsa19lbmFibGUoKSBpbiBvcmRlciB0byBjYXRj
aCB0aGUKPiA+IHBvdGVudGlhbCBleGNlcHRpb24uIE1vcmVvdmVyLCBjb252ZXJ0IHRoZSByZXR1
cm4gdHlwZSBvZgo+Cj4gSXQncyBtb3JlIGFuICJ1bmxpa2VseSBleGNlcHRpb24iIHJhdGhlciB0
aGFuIGEgInBvdGVudGlhbAo+IGV4ZXB0aW9uIi4KPgo+ID4gcmszeF9pMmNfYWRhcHRfZGl2KCkg
aW50byBpbnQgYW5kIGFkZCB0aGUgY2hlY2suCj4KPiAuLi4KPgo+ID4gIHN0YXRpYyB1MzIgcmsz
eF9pMmNfZnVuYyhzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXApCj4gPiBAQCAtMTM2NSw5ICsxMzg5
LDEyIEBAIHN0YXRpYyBpbnQgcmszeF9pMmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICBjbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShp
MmMtPmNsayk7Cj4gPiAtICAgICByazN4X2kyY19hZGFwdF9kaXYoaTJjLCBjbGtfcmF0ZSk7Cj4g
PiArICAgICByZXQgPSByazN4X2kyY19hZGFwdF9kaXYoaTJjLCBjbGtfcmF0ZSk7Cj4gPiAgICAg
ICBjbGtfZGlzYWJsZShpMmMtPmNsayk7Cj4KPiB5b3UgY2FuJ3QgZGlzYWJsZSBhIGNsb2NrIHRo
YXQgaGFzIGZhaWxlZCB0byBlbmFibGUsIHJpZ2h0Pwo+Cj4gQlRXLCBhbHRob3VnaCBJIGxpa2Ug
dGhpcyBwYXRjaCAob3IgYXQgbGVhc3QgSSBkb24ndCBkaXNsaWtlKSwgSQo+IHN0aWxsIHdhbnQg
dG8gY2hlY2sgd2hldGhlciBpdCdzIHdhbnRlZCBvciBub3QuCj4KPiBBbmRpCj4KClRoYW5rIHlv
dSBmb3IgeW91ciBhZHZpY2UuIEkgaGF2ZSBjYXJlZnVsbHkgcmV2aWV3ZWQgdGhlIHBhdGNoLgpU
aGVyZSBhcmUgdHdvIGNsb2NrczogImkyYy0+Y2xrIiBhbmQgImkyYy0+cGNsayIuClRoZSAiaTJj
LT5jbGsiIGlzIGVuYWJsZWQgYW5kIGRpc2FibGVkIGluIHJrM3hfaTJjX3Byb2JlKCksCndoaWxl
IHRoZSAiaTJjLT5wY2xrIiBpcyBtYW5hZ2VkIHdpdGhpbiByazN4X2kyY19hZGFwdF9kaXYoKS4K
VGh1cywgdGhlICJpMmMtPmNsayIgaGFzIGFscmVhZHkgYmVlbiBlbmFibGVkIGF0IHRoaXMgcG9p
bnQuCgotSmlhc2hlbmcKCgo+ID4KPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAg
IGdvdG8gZXJyX2Nsa19ub3RpZmllcjsKPiA+ICsKPiA+ICAgICAgIHJldCA9IGkyY19hZGRfYWRh
cHRlcigmaTJjLT5hZGFwKTsKPiA+ICAgICAgIGlmIChyZXQgPCAwKQo+ID4gICAgICAgICAgICAg
ICBnb3RvIGVycl9jbGtfbm90aWZpZXI7Cj4gPiAtLQo+ID4gMi4yNS4xCj4gPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
