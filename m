Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25213C5472C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 21:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uFxApZ3BxAvgt0cTLEgNkdZlBP7Tt/LngdyXyItrmU=; b=r5uPDCEnJJ/X1R
	TlsO+oFbeGw2ggseS0Ojbfe4OWyyHAv1EMwI2YCLeE8z3B/3x0v47hzUd7UyOqCpVYjlA+yHvNv8c
	M7tUNsPc3+IeGy4CyL7xLaKjSBZSM8vkUmJsYrmfBhMUEMbQs6fIoz8ZUudjQSNaWsU6aBrBhVbSX
	UfrtkeKWoH9SgF2FY2xm9QNpKTUpSgnzmlwpbQafXM825E3eP4SPTTM10NJKI1aWslKFh6gn5yJxt
	O42KUsqpM+Bq0t/QaCuYA8Wv6MEr68YTKEG5ec3tfrBmuddGAXp3ElbKvO01nb1Qrs7r8MQe54Z9P
	VufWUQfz3ZZLYesODeFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shbqe-00000000iNB-0xdG;
	Fri, 23 Aug 2024 21:29:32 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shbps-00000000iAe-0sNb
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 21:28:46 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-201df0b2df4so19104545ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 14:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724448523; x=1725053323; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6yyPOjZiqt8OBw3MWeKPxceSdJUt3buN6TZjEitZlA=;
        b=UQDCYHCd8vT9BByNm9krl8nQCAEuZKTDmFIX7XBDZj5DAx3bLZN4JHSb3JotHK+qHb
         US+O4MLwn+ReDP+Zl9wlPZsGtMeOoIZawoCr3FZzuJe9hGixFYHNW75tIS7WeqSmaMLC
         IOQI+Mzdb2WIy4K8tiEPr1tETaXZP1Pzmc628=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724448523; x=1725053323;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6yyPOjZiqt8OBw3MWeKPxceSdJUt3buN6TZjEitZlA=;
        b=r7AcVahZBOpM1NazMfiQrnDSmB6C0/H+GoIuSP1/QeLecR+QXfFdhY+imv+s1iQeGJ
         L+jH4YxP1DlqvffBnlnvvLOtExQg+aizzKWJ0Cilqgf5WeF6K4O6tV+zMUwnkdscxaDN
         NtScl3dsL9+IkcnEWc8FFtAGttiNDU9ORRqvESi8Hlk6455OMzWgQ0fkfsJbVOt40VMW
         YgSTR3GI3ZryeKNEVrY/m9xB0AcWPn9k8T/PjSDzqXgFOOa97TYqrNyPVcFjnzz9AIPs
         yNYmez5Ldq0aVeM6p4zEaBEb9+L/0FyZpUhJlPsZkjHOdUli4fe1yUGzi0H5Ux+ZaMQv
         RbRA==
X-Forwarded-Encrypted: i=1; AJvYcCVyNqmAh/LiTyoGC9wQ+4Pj6YC+bvPiOtXVP7Zw19inV5blvzFe3zDW66sTHSMdaxKaN81X7H/oDMh0PgqAwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwhL1nzNVSgM2wiJpVkWdF9pEa9pAoisptUREkw7FZtafhd8/HO
	Q3Ehn+EETU+sXJHqm/DdIS9+GrtImg7D4jYYaP+cNqN+t4Yj0EVeI2pU9tzgaA==
X-Google-Smtp-Source: AGHT+IEyiELvUQ08sRXKAsH1w4lS8Mpljm5W6KidIpNO/oUI/CTnm9GKW1kRt4ARb+bsEYqhFyMDeQ==
X-Received: by 2002:a17:903:1c6:b0:202:100f:7b9b with SMTP id d9443c01a7336-2039e4ca62amr43391485ad.35.1724448522990;
        Fri, 23 Aug 2024 14:28:42 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:9d43:7af7:9970:8219])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-20385594057sm32605055ad.119.2024.08.23.14.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 14:28:42 -0700 (PDT)
Date: Fri, 23 Aug 2024 14:28:40 -0700
From: Brian Norris <briannorris@chromium.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org,
	heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCH v3 5/6] spi: rockchip: Suspend and resume the bus during
 NOIRQ_SYSTEM_SLEEP_PM ops
Message-ID: <Zsj_CJR56TcahXBO@google.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
 <20220216014028.8123-6-jon.lin@rock-chips.com>
 <20220621154218.sau54jeij4bunf56@core>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220621154218.sau54jeij4bunf56@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_142844_393716_1C814206 
X-CRM114-Status: GOOD (  19.13  )
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

T24gVHVlLCBKdW4gMjEsIDIwMjIgYXQgMDU6NDI6MThQTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gT24gV2VkLCBGZWIgMTYsIDIwMjIgYXQgMDk6NDA6MjdBTSArMDgwMCwgSm9uIExp
biB3cm90ZToKPiA+IEZyb206IHNoZW5nZmVpIFh1IDx4c2ZAcm9jay1jaGlwcy5jb20+Cj4gPiAK
PiA+IHRoZSB3YWtldXAgaW50ZXJydXB0IGhhbmRsZXIgd2hpY2ggaXMgZ3VhcmFudGVlZCBub3Qg
dG8gcnVuIHdoaWxlCj4gPiBAcmVzdW1lIG5vaXJxKCkgaXMgYmVpbmcgZXhlY3V0ZWQuIHRoZSBw
YXRjaCBjYW4gaGVscCB0byBhdm9pZCB0aGUKPiA+IHdha2V1cCBzb3VyY2UgdHJ5IHRvIGFjY2Vz
cyBzcGkgd2hlbiB0aGUgc3BpIGlzIGluIHN1c3BlbmQgbW9kZS4KPiAKPiBUaGlzIHBhdGNoIGNh
dXNlcyBvb3BzIG9uIHN1c3BlbmQgZXZlcnkgc2luZ2xlIHRpbWUsIGJlY2F1c2UgaXQgdHJpZXMg
dG8gZGlzYWJsZQo+IGFscmVhZHkgZGlzYWJsZWQgY2xvY2tzIChvbmUgZGlzYWJsZSBpbiBydW50
aW1lIFBNIHN1c3BlbmQsIGFuZCBvdGhlciBvbmUgaW4KPiBzeXN0ZW0gc3VzcGVuZCkuIEl0IGFs
c28gZmFpbHMgdG8gcHJvcGVybHkgaGFuZGxlIGVycm9ycyBmcm9tIGNsa19wcmVwYXJlX2VuYWJs
ZQo+IGluIHJvY2tjaGlwX3NwaV9yZXN1bWUsIHBvdGVudGlhbGx5IGNhdXNpbmcgZXZlbiBtb3Jl
IGNsb2NrIGVuYWJsZS9kaXNhYmxlCj4gaW1iYWxsYW5jZSBpc3N1ZXMuCj4gCj4gUGxlYXNlIHNl
bmQgYSByZXZlcnQgYW5kIGZpZ3VyZSBvdXQgYSBiZXR0ZXIgZml4IGZvciB0aGUgb3JpZ2luYWwg
aXNzdWUuCgpEaWQgYW55b25lIGV2ZXIgcmVzb2x2ZSB0aGlzPyBJIHN0aWxsIHNlZSB0aGlzIGlz
c3VlIG9uIDYuMTAuNi4KCklJVUMsIHdlIGNhbiBhY3R1YWxseSBkbyBhIHBhcnRpYWwgcmV2ZXJ0
IC0tIHdlICpzaG91bGQqIGJlIHVzaW5nCnBtX3J1bnRpbWVfZm9yY2Vfe3N1c3BlbmQscmVzdW1l
fSgpIChzbyB0aGF0IHdlIGNvb3JkaW5hdGUgY2xrLWRpc2FibGUsCmV0Yy4gd2l0aCB0aGUgcnVu
dGltZSBQTSBzdGF0ZSksIGJ1dCB3ZSBhbHNvIHdhbnQgdG8gcnVuIGluIHRoZSBub2lycQpwaGFz
ZS4KCklmIEkgZG9uJ3Qgc2VlIGFueW9uZSBlbHNlJ3Mgc29sdXRpb24gb3IgaW5wdXQsIEknbGwg
cGxhbiBvbiBzdWJtaXR0aW5nCmEgcGFydGlhbCByZXZlcnQsIHdoaWNoIHNlZW1zIHRvIHRlc3Qg
b3V0IE9LIGZvciBtZS4KCkJyaWFuCgpQLlMuIE9uZSBjYW4gd29yayBhcm91bmQgdGhpcyBwcm9i
bGVtIGJ5IGRpc2FibGluZyBydW50aW1lIFBNIGZvciB0aGUKY29udHJvbGxlcnM6Cgpmb3IgaSBp
biAvc3lzL2J1cy9wbGF0Zm9ybS9kcml2ZXJzL3JvY2tjaGlwLXNwaS8qL3Bvd2VyL2NvbnRyb2w7
IGRvCiAgZWNobyBvbiA+JGkKZG9uZQoKQnV0IG9idmlvdXNseSB0aGF0J3Mgbm90IGlkZWFsLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
