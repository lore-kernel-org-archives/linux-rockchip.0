Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 154CCC48BE6
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 13:00:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C220161159
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 13:00:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C220161159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXcq2phZpV833+cYPVZba/0K/rJF7a0m0wsyEYsQpLs=; b=BoFNseYATWqzP9
	tzXkM18scAo9f86EsKAr0NRjiNNF8fHd+w6cU3wdPelx4u14wLaSFqe2cAKHd8/uujJQ2lgY1/E8w
	wclo1yiJaa7wQPS8tjgpiRazX0tm83VS3tsIhNyYZnFoLoFbSiIOBdZvLTxvWQA1OUFYUFI7QP2wM
	3LyV7aBzC52i9ZyaXaHS37fnnpGgJXkthdwLCbjhn421z4y7MXf+9xvYQt6+zC11EQ26RE3mrrqTW
	qNmb+9lePoiFMTut3lxBZtgO/EjFQE6KJfsB548KEUgz1XVau9Kyblptb5a2Sk08nCcfGEFpIplhM
	vbQHT9+mgKgI8V4v91aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltVA1-006LUI-Jw; Wed, 16 Jun 2021 13:00:49 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltV9e-006LN8-8R; Wed, 16 Jun 2021 13:00:29 +0000
Received: by mail-pg1-x52c.google.com with SMTP id e22so1877444pgv.10;
 Wed, 16 Jun 2021 06:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=nbiAswAKlZ0y8YPJxSeoqwYopSHf2ViQ7XrbNtGNP7U=;
 b=uXdMqCkrPWNTiKAf7OMydRO333IWQVnoKc7TSmyHW5AYBvNUsSNHX8CKo0EWS6/YaH
 cilJMMRHTtZoK77Rk3pA9OB5r2+C2dSFKrYVFSrvJ/4xLQF9uu9LTvM+mRzB5Rw0iu+h
 8/qeGU2sQ2XZ4eE0uJgV07fAIW+Gbb+W71HdY4dT1bVxwRar8jpbEwI9nM/KyBxgpfqg
 RQ1+qoMD+Mx5MiBEem6KLuIp5E2Qzff47pZG9iOMLOsdBtLwT1UsPFY31vge55jumMBf
 7gcYCwkqDUa5eNWwPQisr6w5Q5i9/0iAh3nsxC81jJOG0NB5kpxJR3S6fgnR3u7X8QU3
 chzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=nbiAswAKlZ0y8YPJxSeoqwYopSHf2ViQ7XrbNtGNP7U=;
 b=rBfVpfo0e2K2g+6jpRaW+YoN5NjGdYIbvfRic+QAJ0pcHuUcaia8i2OX87Yb1Rh/cl
 MjmrXMr7o5phYq2tWllbD88i6zOEy2F3hsfjI4phYOdZSx3zF7a0Tlzf+MKEOlD6XdGG
 Xvi81rvpkwAdaOuHYUiKOl1GaZm5OjBNdJtpZD9gBOhPB3yT9pg7XpRVoXZX/iPZ2rqQ
 R+LuDxvLsiCcs50OMctSBNa0L6M3nsJFmNjfQx0Z2v2y85T9s227mqGD5Bgkt04PMpR3
 BQK9+BznBLE7V0HY/NTzdxLSCIKDV7fRl3V5ubgWR7w8h++b9aGM/o+1TjJYp8ejHICI
 o70Q==
X-Gm-Message-State: AOAM533Fph5Aq6pgHVmEYSJgpxMbSI2y4tjbh3UqnzHLKeZHO5a7QnC9
 BS0Y/WGD9y61KRCTCMEHbF4=
X-Google-Smtp-Source: ABdhPJzICrZwP7kf4FTaRUp8e7LF5XaMDQHdJRB1XT5FoGculVj+18BbPpYXhqA4KlHFVFaYJsOlkA==
X-Received: by 2002:a62:ae03:0:b029:2f8:b04f:c012 with SMTP id
 q3-20020a62ae030000b02902f8b04fc012mr9593948pff.62.1623848424167; 
 Wed, 16 Jun 2021 06:00:24 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id h18sm2394018pgl.87.2021.06.16.06.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 06:00:23 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,  Bjorn Helgaas <helgaas@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,  PCI
 <linux-pci@vger.kernel.org>,  Alexandru Elisei <alexandru.elisei@arm.com>,
 wqu@suse.com,  Robin Murphy <robin.murphy@arm.com>,  Peter Geis
 <pgwipeout@gmail.com>,  Ard Biesheuvel <ardb@kernel.org>,  Brian Norris
 <briannorris@chromium.org>,  Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge
 window to 32-bit address memory
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <3105233.izSxrag8PF@diego>
 <CAL_JsqL8iDo5sLmgNVuXs5wt3TpVJbKHfk7gE740DidmvLOwiQ@mail.gmail.com>
 <3238453.R1toDxpfAE@diego>
Date: Wed, 16 Jun 2021 22:00:21 +0900
In-Reply-To: <3238453.R1toDxpfAE@diego> ("Heiko =?utf-8?Q?St=C3=BCbner=22'?=
 =?utf-8?Q?s?= message of "Tue, 15 Jun 2021 23:49:07 +0200")
Message-ID: <871r92t15m.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_060026_400309_539AFDC6 
X-CRM114-Status: GOOD (  25.42  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKPiBBbSBEaWVuc3RhZywg
MTUuIEp1bmkgMjAyMSwgMjM6Mjk6MTIgQ0VTVCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+PiBPbiBU
aHUsIEp1biAxMCwgMjAyMSBhdCAzOjUwIFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IHdyb3RlOgo+PiA+Cj4+ID4gSGksCj4+ID4KPj4gPiBBbSBNb250YWcsIDcuIEp1bmkgMjAy
MSwgMTM6Mjg6NTYgQ0VTVCBzY2hyaWViIFB1bml0IEFncmF3YWw6Cj4+ID4gPiBUaGUgUENJZSBo
b3N0IGJyaWRnZSBvbiBSSzMzOTkgYWR2ZXJ0aXNlcyBhIHNpbmdsZSA2NC1iaXQgbWVtb3J5Cj4+
ID4gPiBhZGRyZXNzIHJhbmdlIGV2ZW4gdGhvdWdoIGl0IGxpZXMgZW50aXJlbHkgYmVsb3cgNEdC
Lgo+PiA+ID4KPj4gPiA+IFByZXZpb3VzbHkgdGhlIE9GIFBDSSByYW5nZSBwYXJzZXIgdHJlYXRl
ZCA2NC1iaXQgcmFuZ2VzIG1vcmUKPj4gPiA+IGxlbmllbnRseSAoaS5lLiwgYXMgMzItYml0KSwg
YnV0IHNpbmNlIGNvbW1pdCA5ZDU3ZTYxYmY3MjMgKCJvZi9wY2k6Cj4+ID4gPiBBZGQgSU9SRVNP
VVJDRV9NRU1fNjQgdG8gcmVzb3VyY2UgZmxhZ3MgZm9yIDY0LWJpdCBtZW1vcnkgYWRkcmVzc2Vz
IikKPj4gPiA+IHRoZSBjb2RlIHRha2VzIGEgc3RyaWN0ZXIgdmlldyBhbmQgdHJlYXRzIHRoZSBy
YW5nZXMgYXMgYWR2ZXJ0aXNlZCBpbgo+PiA+ID4gdGhlIGRldmljZSB0cmVlIChpLmUsIGFzIDY0
LWJpdCkuCj4+ID4gPgo+PiA+ID4gVGhlIGNoYW5nZSBpbiBiZWhhdmlvdXIgY2F1c2VzIGZhaWx1
cmUgd2hlbiBhbGxvY2F0aW5nIGJ1cyBhZGRyZXNzZXMKPj4gPiA+IHRvIGRldmljZXMgY29ubmVj
dGVkIGJlaGluZCBhIFBDSS10by1QQ0kgYnJpZGdlIHRoYXQgcmVxdWlyZQo+PiA+ID4gbm9uLXBy
ZWZldGNoYWJsZSBtZW1vcnkgcmFuZ2VzLiBUaGUgYWxsb2NhdGlvbiBmYWlsdXJlIHdhcyBvYnNl
cnZlZAo+PiA+ID4gZm9yIGNlcnRhaW4gU2Ftc3VuZyBOVk1lIGRyaXZlcyBjb25uZWN0ZWQgdG8g
Um9ja1BybzY0IGJvYXJkcy4KPj4gPiA+Cj4+ID4gPiBVcGRhdGUgdGhlIGhvc3QgYnJpZGdlIHdp
bmRvdyBhdHRyaWJ1dGVzIHRvIHRyZWF0IGl0IGFzIDMyLWJpdCBhZGRyZXNzCj4+ID4gPiBtZW1v
cnkuIFRoaXMgZml4ZXMgdGhlIGFsbG9jYXRpb24gZmFpbHVyZSBvYnNlcnZlZCBzaW5jZSBjb21t
aXQKPj4gPiA+IDlkNTdlNjFiZjcyMy4KPj4gPiA+Cj4+ID4gPiBSZXBvcnRlZC1ieTogQWxleGFu
ZHJ1IEVsaXNlaSA8YWxleGFuZHJ1LmVsaXNlaUBhcm0uY29tPgo+PiA+ID4gTGluazogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvci83YTFlMmViYy1mN2Q4LTg0MzEtZDg0NC00MWE5YzM2YTg5MTFA
YXJtLmNvbQo+PiA+ID4gU3VnZ2VzdGVkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBh
cm0uY29tPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogUHVuaXQgQWdyYXdhbCA8cHVuaXRhZ3Jhd2Fs
QGdtYWlsLmNvbT4KPj4gPiA+IFRlc3RlZC1ieTogQWxleGFuZHJ1IEVsaXNlaSA8YWxleGFuZHJ1
LmVsaXNlaUBhcm0uY29tPgo+PiA+ID4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+Cj4+ID4gPiBDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KPj4gPgo+PiA+
IGp1c3QgZm9yIGNsYXJpdHksIHNob3VsZCBJIGp1c3QgcGljayB0aGlzIHBhdGNoIHNlcGFyYXRl
bHkgZm9yIDUuMTMtcmMgdG8KPj4gPiBtYWtlIGl0IGVhc3kgZm9yIHBlb3BsZSB1c2luZyBjdXJy
ZW50IGtlcm5lbCBkZXZpY2V0cmVlcywgb3Igc2hvdWxkCj4+ID4gdGhpcyB3YWl0IGZvciB0aGUg
dXBkYXRlIG1lbnRpb25lZCBpbiB0aGUgY292ZXItbGV0dGVyIHJlc3BvbnNlCj4+ID4gYW5kIHNo
b3VsZCBnbyBhbGwgdG9nZXRoZXIgdGhyb3VnaCB0aGUgUENJIHRyZWU/Cj4+IAo+PiBUaGlzIHdh
cyBkcm9wcGVkIGZyb20gdjQsIGJ1dCBzaG91bGQgc3RpbGwgYmUgYXBwbGllZCBJTU8uCj4KPiBJ
dCB3YXMgcHJvYmFibHkgZHJvcHBlZCBiZWNhdXNlIEkgYXBwbGllZCBpdCA7LSkKPgo+IEl0J3Mg
cGFydCBvZiBhcm1zb2MgYWxyZWFkeSBbMF0gYW5kIHNob3VsZCBtYWtlIGl0cyB3YXkgaW50bwo+
IDUuMTMgc2hvcnRseS4KClRoYW5rcyBmb3Igc2VuZGluZyB0aGUgcGF0Y2ggYWxvbmcuIEkgbGVm
dCBhIG5vdGUgdG8gdGhlIGVmZmVjdCBpbiB2NApidXQgaXQncyBlYXN5IHRvIG1pc3MuCgpIb3Bl
ZnVsbHkgYWxsIHNvcnRlZCBub3cuCgpbLi4uXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
