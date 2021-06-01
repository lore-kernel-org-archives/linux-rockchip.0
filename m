Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAB2C47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 18:34:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E92E60C3E
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 18:34:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E92E60C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqd6flN8VJb2AgaAVA8x8Ky448TOuGWsDLKk6L2fLW0=; b=iOl9J0TSuUbcQo
	ox/to+KbKymyH8m9+3ImB/fhlMX/XRh3ou8aQiUN4AWJQd2VwCRZykUkKiI6iGqJuCwBQax9ymirv
	lsf/v98Dzhi1qOyabZUJJXhKGjeG60pPBXC/xTmb5uc/qmJ/zPrV1o1ezJG6lzLCGg0qXwpYCmQUJ
	ayfiW1NXKtvJc+ryV8TfdjUBdrPsRupWNfKBi49/2QE9mkmlCjxYZO68mravRf9XS3WsCWuUxRwPM
	9l73JtkSeOGylBTgnmlxkF+7aDsnujXq9WtCcVlrnIY46xpvtaRuVtT7pNUTlmOFoybYQR4B4BKgY
	pxd4Jzh0ICTwLWDY1+RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo9DF-000QT5-Ba; Tue, 01 Jun 2021 18:34:01 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo9DC-000QRL-77
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 18:33:59 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 t10-20020a05683022eab0290304ed8bc759so173988otc.12
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 11:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RzTOE/XOCVSzmLG98WEkmn6LNXza+BETZY5BVIMEZe0=;
 b=Q+/PPq9LSmL6xAIqiLbVwzxMGmJatzyUPqQWgztcCyifzWeWBetsFgfvnN98wO8Yg+
 MBu2uN+BJISOWSAaDsrPL0UpoVhf61o2Zjg3Ub2txRN+Z23rzGZyzxvHZNNwRI6GgPF8
 xPVsX14QMUC1iZi1vI3z+6mcMB9GW59esPReJGczcwYTkdhkmJirjjeb5M//oOC8A140
 I8ay9ZuLd9izlUotMqGaMxz3jPYqpQDA+VkagD9rXXuQPvGZOcmkt2b9oz9R4UoHwlq3
 EKFabv7GDKJvCGxvc51QM9nFDTYFLtUcas1pS8gLhT+mt2nU+1FRMpR+IRVNES0rVUCB
 +26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RzTOE/XOCVSzmLG98WEkmn6LNXza+BETZY5BVIMEZe0=;
 b=mmNsuay2A88wg+84lN7fOBgzuVS30f83gx5+6gz6HaiBlFUtOibe2U/DLrJ4B8sfRT
 K/N8i0c5oTn59gzguBd/aefovZJyn/J8XAMjC5AZFVmSEIfaE3uYElpX4c0pfYzj9Mcu
 GEJgx9HjZhm/Afp8kIb8GnN1kM09tLt5Zf8fXHvj/RgDz30T6KXv2OK7mEGDkUL1zDL+
 NfHqz70YsrgzaMQGn7vjEE8wRZiOzcohKD1kzDtGdrhdSy72X2xe+Ip5gR9DtXBZeuOI
 mTX9RhByPmvbqT06dndMENiaeQ1r3Gxjdz76/zBm4l8CreFtSARAHNgdNCM5MfUG+QR/
 LANw==
X-Gm-Message-State: AOAM532SC1l/A0Vbkb/ONtW+tRkEcf9drAM6j4+Cf9dAxkH/mbdrdET/
 MOzZ7EEUDwhzFWptZhi64v4=
X-Google-Smtp-Source: ABdhPJxjBHoMhAl05mvgUMRUJ3hwUTLp13vifa+CyU+JOZkkyhO0RTyrual33v6kA5md3LS4ftGd/w==
X-Received: by 2002:a05:6830:1e21:: with SMTP id
 t1mr22465735otr.100.1622572436498; 
 Tue, 01 Jun 2021 11:33:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id r19sm1095965otn.37.2021.06.01.11.33.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 11:33:55 -0700 (PDT)
Date: Tue, 1 Jun 2021 13:33:51 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601183351.GA31227@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell> <20210601155832.GC2165650@dell>
 <20210601171708.GA3529@wintermute.localdomain>
 <20210601173944.GA2173308@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601173944.GA2173308@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_113358_312858_F1FF5DB4 
X-CRM114-Status: GOOD (  23.75  )
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

T24gVHVlLCBKdW4gMDEsIDIwMjEgYXQgMDY6Mzk6NDRQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFR1ZSwgMDEgSnVuIDIwMjEsIENocmlzIE1vcmdhbiB3cm90ZToKPiAKPiA+IE9uIFR1
ZSwgSnVuIDAxLCAyMDIxIGF0IDA0OjU4OjMyUE0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+
ID4gT24gVHVlLCAwMSBKdW4gMjAyMSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBJ
J3ZlIGFwcGxpZWQgdGhlIG5vbi1Bcm0gcGF0Y2hlcy4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgZm9s
bG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2Nm
MWFmOWFkNjI3YjU6Cj4gPiA+ID4gCj4gPiA+ID4gICBMaW51eCA1LjEzLXJjMSAoMjAyMS0wNS0w
OSAxNDoxNzo0NCAtMDcwMCkKPiA+ID4gPiAKPiA+ID4gPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoKPiA+ID4gPiAKPiA+ID4gPiAgIGdpdDovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0Yi1tZmQtYXNvYy12NS4xNAo+
ID4gPiA+IAo+ID4gPiA+IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0MzdmYWFhNmNl
YmFkZjhmZjRjMmMyOGQ3Y2IyNmVkNGUzNGFlYjE0Ogo+ID4gPiA+IAo+ID4gPiA+ICAgZHQtYmlu
ZGluZ3M6IEFkZCBSb2NrY2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0ICgyMDIxLTA2LTAx
IDEzOjQwOjQxICswMTAwKQo+ID4gPiA+IAo+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiBJbW11dGFi
bGUgYnJhbmNoIGJldHdlZW4gTUZEIGFuZCBBU29DIGR1ZSBmb3IgdGhlIHY1LjE0IG1lcmdlIHdp
bmRvdwo+ID4gPiA+IAo+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiBDaHJpcyBNb3JnYW4gKDMpOgo+
ID4gPiA+ICAgICAgIG1mZDogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlvIENPREVDIHN1cHBvcnQK
PiA+ID4gPiAgICAgICBBU29DOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9y
dAo+ID4gPiA+ICAgICAgIGR0LWJpbmRpbmdzOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09E
RUMgc3VwcG9ydAo+ID4gPiA+IAo+ID4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL3JrODA4LnR4dCB8IDE4OCArKysrKysrKysKPiA+ID4gPiAgZHJpdmVycy9tZmQv
cms4MDguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgODEgKysrKwo+ID4gPiA+ICBp
bmNsdWRlL2xpbnV4L21mZC9yazgwOC5oICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysr
Cj4gPiA+ID4gIHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
IHwgICA2ICsKPiA+ID4gPiAgc291bmQvc29jL2NvZGVjcy9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDIgKwo+ID4gPiA+ICBzb3VuZC9zb2MvY29kZWNzL3JrODE3X2NvZGVjLmMg
ICAgICAgICAgICAgICAgICB8IDUzOSArKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAg
NiBmaWxlcyBjaGFuZ2VkLCA4OTcgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgc291bmQvc29jL2NvZGVjcy9yazgxN19jb2RlYy5jCj4gPiA+IAo+ID4gPiBMb29rcyBs
aWtlIHRoZSBidWlsZGVycyByZXBvcnRlZCBhIFc9MSB3YXJuaW5nIGludHJvZHVjZWQgYnkgdGhl
IHNldC4KPiA+ID4gCj4gPiA+IFdvdWxkIHlvdSBsaWtlIG1lIHRvIGZpeCBpdCBhbmQgc3VibWl0
IGEgcGF0Y2g/Cj4gPiAKPiA+IEkgY2FuJ3Qgc2VlbSB0byByZXByb2R1Y2UgdGhlIHdhcm5pbmcs
IGFyZSB0aGVyZSBtb3JlIGRldGFpbHMgYXMgdG8KPiA+IHdoYXQgaXMgY2F1c2luZyBpdD8KPiAK
PiBZZXMsIGl0J3MgYSBXPTEgd2FybmluZy4gIFB1dCB0aGF0IG9uIHlvdXIgY29tbWFuZCBsaW5l
LgoKR290IGl0LiBXYW50IG1lIHRvIHJlc3VibWl0IHRoZSBwYXRjaD8gTG9va3MgbGlrZSBJIHdh
cyByZXF1ZXN0aW5nIGEKcmV0dXJuIHZhbHVlIGZyb20gYSBmdW5jdGlvbiBhbmQgbm90IGRvaW5n
IGFueXRoaW5nIHdpdGggaXQuCgpUaGFuayB5b3UKCgo+IAo+IC0tIAo+IExlZSBKb25lcyBb5p2O
55C85pavXQo+IFNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwo+IExp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29Dcwo+IEZvbGxvdyBM
aW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
