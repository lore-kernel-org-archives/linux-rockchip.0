Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF392C001B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 20:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cl+sVZOxjjbmpDmFyEPRevToZoJRTD0xOwSe6OETJcc=; b=QA+AhgkYgu3zyI
	N9Fq7DxkBn6OH0kpBBzg5eFgKmfjT+h8lUkjD8/+aBdJwdLg0Auxb+wRCVioRWLWQ6aLHQmJ7uqkc
	kTJriyUzAOWbqffyRlbWQumn1lZCBLTA3orus+Bz3/LrewmAR4yCZkOGGJoadR9uKQbFpSeW/6GsN
	XMaJa8SzkhEmcZ5WDIVisIcSlXvuJ4bLQ25Gsttz6fzHYNF2ukDytCotpFHYEkcu+CtGZnNJaFvOR
	zufY2FFqeSyUe69QSz4fweltECqTb3mLroy+eXusoPw85AnF0GRm2qAKvMVOgYfSRy+HhMlXhxaoq
	0egJUIIg8jWY8OWtjpIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MuA-002AIc-2c; Mon, 19 Dec 2022 20:38:34 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Mu3-002A2y-K9
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 20:38:29 +0000
Received: by mail-qt1-x82b.google.com with SMTP id c7so9313269qtw.8
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 12:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=31vbTCJ1FQ88+HdPn1SShRJyYwZ+oGDNLQOaB4qvNNE=;
        b=Kyk28UvNHJ3WQw7Y/VpDQu+2aC8AudzzBO83Zr9Gidt0t+KRAi/CLxxrlP59GNPcuy
         1VcHPLxDHkj3BpzGE/71h0fHb/oiQrXedbzTAUo21W9FtH1Z6hDNMkiR4dUGHkv1XZRX
         wO26I+UOEqxvIt9i9RDg/gQAxMP3wixPvv9lem0A3POU5MmrFa1HJJieAKHGm3b+Ec/3
         hu6Qi6Bw9XDvqCHg4D9HReFM6RdOLugPN0ZMlVN3Q+BS3DbixX51efJRmWbICqISPpXE
         FE6/5GZj5GmYpp6ewjcXwIfAWWZXCRTq2gLUBrTrDIm9hvnkBw5baNveltdi72yKST3X
         m2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=31vbTCJ1FQ88+HdPn1SShRJyYwZ+oGDNLQOaB4qvNNE=;
        b=u1NXyACShMwuNy5ehZghAfQwtT8ysNIyOCA2FiaUaWASXH48I10LyCA7VKB7i/BNDx
         eU93QU1DKY613KwAJk4ioHUcYbHc23dSh48ID1P+QJvvG/ur9mNCcz0gmBN3pV1mwXtU
         leFz9jsrWBHsreDko8zHeLEju42yySixR7oIQsnPcwVXqqTYtTZfmFnSXPqDUXhVgJvl
         jNE6nVoGRfyvB7sZTCOSRZOwEVfx/gm+7zStP6eK4LCmHTeh+1sK27glEB/CFep8QAtF
         EVL+F2devde28xyGD98tzvupDJ8jZqYJOF4isIKp2/uXvWC9Wl23L/haw1/MbiNF2Mna
         HEbQ==
X-Gm-Message-State: ANoB5pnA/EXq9iGD6dEaD2TtdzCsqSZgfhyOF5BtynMMw/OnVicGN1wH
	3CB1qP3iTf4WIegzUixnoUVf6A==
X-Google-Smtp-Source: AA0mqf4Vb8phNbzN6HOEYP2ewvTSUBFN6wLEe8bPdtAoynvoW6bPty3w7YRsCBqndO+1K9AFPO8+XA==
X-Received: by 2002:ac8:75d0:0:b0:3a8:2b87:9fd8 with SMTP id z16-20020ac875d0000000b003a82b879fd8mr36696351qtq.48.1671482305620;
        Mon, 19 Dec 2022 12:38:25 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id v9-20020a05622a188900b003a826e25bc4sm6683526qtc.64.2022.12.19.12.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 12:38:25 -0800 (PST)
Message-ID: <e3663c85c75d09259a3135cb6ccfe7d6231bd752.camel@ndufresne.ca>
Subject: Re: [PATCH v1 4/9] media: verisilicon: Check AV1 bitstreams bit
 depth
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 19 Dec 2022 15:38:23 -0500
In-Reply-To: <20221219155616.848690-5-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-5-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_123828_655472_13F728E6 
X-CRM114-Status: GOOD (  14.74  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gVGhlIGRyaXZlciBzdXBwb3J0cyA4IGFuZCAxMCBiaXRzIGJpdHN0
cmVhbXMsIG1ha2Ugc3VyZSB0byBkaXNjYXJkCj4gb3RoZXIgY2FzZXMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
IHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gaW5kZXgg
OGU5MzcxMGRjZmVkLi5lMTBmYzU5NjM0ZGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IEBAIC0yODIsNyArMjgyLDEzIEBAIHN0
YXRpYyBpbnQgaGFudHJvX3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4gIAkJLyog
V2Ugb25seSBzdXBwb3J0IHByb2ZpbGUgMCAqLwo+ICAJCWlmIChkZWNfcGFyYW1zLT5wcm9maWxl
ICE9IDApCj4gIAkJCXJldHVybiAtRUlOVkFMOwo+ICsJfSBlbHNlIGlmIChjdHJsLT5pZCA9PSBW
NEwyX0NJRF9TVEFURUxFU1NfQVYxX1NFUVVFTkNFKSB7Cj4gKwkJY29uc3Qgc3RydWN0IHY0bDJf
Y3RybF9hdjFfc2VxdWVuY2UgKnNlcXVlbmNlID0gY3RybC0+cF9uZXcucF9hdjFfc2VxdWVuY2U7
Cj4gKwo+ICsJCWlmIChzZXF1ZW5jZS0+Yml0X2RlcHRoICE9IDggJiYgc2VxdWVuY2UtPmJpdF9k
ZXB0aCAhPSAxMCkKPiArCQkJcmV0dXJuIC1FSU5WQUw7CgpBcyB5b3Ugc3RhdGUgaW4gdGhlIGNv
dmVyIGxldHRlciwgc2hvdWxkIHRoaXMganVzdCBiZSB0aGlzIGZvciBub3cgPwoKCj4gKwkJaWYg
KHNlcXVlbmNlLT5iaXRfZGVwdGggIT0gOCkKPiArCQkJcmV0dXJuIC1FSU5WQUw7CgoKPiAgCX0K
PiArCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
