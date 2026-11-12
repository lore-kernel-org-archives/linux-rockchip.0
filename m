Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334CF60A2607
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 13:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vJqYqkW4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=Ff+QzORU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JgcFMMR9IUvfqlivYazuPa68B+niR6zvbcn1ECTYQfs=; b=vJqYqkW4HIH6CgosvJwf5K5LrC
	BDlgktj9EdibW0UouwiDVLA1FJELhB6IV3xU8Ibi6a4TNnSQKt/1TpAIagCKI7tWcJorlGp7gyHLl
	ASNlEL3z2dbj9HgxBIPIk5Ehj6cL+TcRrb6mk9IahRvkA/vwQYX66vXShXfdOoPpZD4HGYrFSLtPR
	vhhBadQ5nlqq9VG1RiUqafVZ8pes4EvbT5pl71ZiejVHa3uDN1zvT4kjh0yIq+e9ehzrmfqPpN5H4
	G4sSuRyss75RSq+QDs2MqgImcj+0xf2R1YQ7mxC05ktQM3J9aj2fYvSp/I8wfOZClZbveO5c1rMlr
	loVfcvcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUcu-00000009yxL-0xES;
	Thu, 12 Nov 2026 13:14:04 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUcf-00000009yih-2oD0
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 13:13:51 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c50604721c8so392181666b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 05:13:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794489226; cv=none;
        d=google.com; s=arc-20260327;
        b=XiVlGxaedm9Rrthu8UnksnNdYyiugLZ6ha2rXqQHfoS2vRvw/kLYZHwbSzaL5Xa675
         2x9fGgI8RnwJs1DnZ7ydi6IR527Aw1HtXL12ptoGjq8OBJAAlj4vJw7G0PrfeqLZJJDQ
         7nDzBLOlUdhcVC+r8ZTTRxFK+ua9buayyhVqedUjo7uc9FYAnN+P23Zhu1CiBbdYh4du
         rbxA3MrDscEMwIQyhtcHAPYmOCtROHgdsAJSm0/w2BF85/e7KjeN0/arxzNc5/qEEKZ2
         hWng9I5Ho2xLk4IxakBDR4JZGhoyO55c59rsZZrfAfPmNAP2yeD5owYh0Q7YyAPtPGSf
         6Gjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tt+WFRdvrZSXnzZAVznwgbf/IavQw06AhCrvauaK6GQ=;
        fh=XQr17FqujDT4uL5zg/LmaPuhYbbt3gbBgAZKp25nc5I=;
        b=AaIXtPiam1IssxLXVvyMNqwbRAeARdy+F8XPCYn/S8nIWTAzqAsv6JvuWiuji6QZr3
         yBcplN7fsd/YAUzW2L0rZQuLuu5c53y8Cu5PSYD1iiSJpkyzo2XBUT3Hoaox9aln1/OU
         kkADAFG/S5qk1UP/R5ClNxah9O1P3CZDei5htRDuiCljrhVMM/RfUgkWqucwT58Ag5Pt
         zjSFrgKKaBViC7AUlL3rzEXE3PXnkvZFu+jPRolQfrGJFQSeku675tog9egqYl0dXVAO
         YW9ibOY7AuGj0QjUHQA3zPLiui33DOltuP7RCfHC8SNW/EzajDFzAd2r69kPxsZgKEjc
         vhqg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794489226; x=1795094026; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tt+WFRdvrZSXnzZAVznwgbf/IavQw06AhCrvauaK6GQ=;
        b=Ff+QzORUkp9rfKHjHrD0+93KcUOCxSn9/hkS82Q3VVPGi5whIYPqzCvSrOVVD8JjYP
         oNS3pNdrFcLQJyhI4cjzav1z8VjYYH1vYvDlRU/rpvhYd5kFMutuEY3VSJs2EHfIg/z4
         WQBmvoupIVjKkLmv7VtadXexRsLD7g14N2cshOqa1IGkMDdNc3p1rCtaaJWYVUWZcXCr
         YU9TmRleaO9wdjrmX7GoVWKw5AHYO+wF62roMJb8OFwbqMxJ9KLbwdki/oznj6FHxueB
         4MXcOIWEhnSbIR9Avj0Xoa7gUEE6kzNMI2zt0yNWQIm37ZpWe2vmHMpdkFb3PKFj4ays
         46Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794489226; x=1795094026;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tt+WFRdvrZSXnzZAVznwgbf/IavQw06AhCrvauaK6GQ=;
        b=Oh3zbbNwzRe7lZ8duU0bjnu+CNXJdHSlFbq2fc/vfO+KoB0x+N/3K0Ueroz5bgpwKD
         C5kwVVilRuooBS+lOtsdFNaixP9tE7zwDyNVJtG2MEFk1sPPj/InF25txFioFmo9uSLk
         fqrrwk/GtpBnRTSZaUFCL1UC1UerpexoUKqlfuZgji6IcmelD8hc4G2CO9CEh4u4YkyA
         75PoWb2jDtTKvgblvfsFgcilLQCdsiBAc3lo62Q/UwD3V21eXK3Ph3sigT/tmwsvcye0
         TI1uZ5rveenstVima1XEANfTXECj724Ql2l/r+JnqK7mwxSV7x8vKyh2wW3JHcy2XKBO
         p3qA==
X-Forwarded-Encrypted: i=1; AL+hErHNDqmOSkA1zTD5SF0eRYop93evY7rrhhrkRMqfY6AIjdNIypIXJIcWhm13kjKHLq2CCu5YtoqNjm3Fl0QPkA==@lists.infradead.org
X-Gm-Message-State: APuU4Z89InvjC7YxWhAGJrFiumjO7c67OVLcV2uNZ0ieKEfC9Y+JmjyN
	YXOgvMo5s5rzy993TvfgQ2AJ9vau+A40KGTzLGKfujg5mj9wP+DgYx5QqSiOx4iTD0J1HgwAHKU
	Lf+QWMy/QCMoaIt5CcnMSiOZRHYKw+D6BQPOQan/MoQ==
X-Gm-Gg: AYBFou3greRaEesCXlsS1ua1Te2tjRK+GJVkxPPq4NHs8+dAtIEbwfm9ti8CXB3ys67
	ppAJ4AdnFVrK52rn71PAR51Z/V9nLbgFr35fwd+FiJ2cFdcb4uKvK0ycHl/YdSGVcc21Dcpn00f
	IWto/00cTJiTQMUsIYHcOiHHmY79YQ9OT5+g9JhVdOjFkDJcleB+5AtSdszs4v8shCpKpv2rDjV
	9ZJf2Q4JJV1Qb+5UKVJVLaGteYfdir78nrGzta94tEQqcj+lpbMj7qKnbv1HfnYzHU/dSIl8lwO
	6aJTS7nULdRwYXidxMngY/xGrLLEoQQB5D54jNywqDf03s6g/Pgg4rYLiWclVdRYWLDK7/+zp8z
	g23+lFchYbdCH/EP7sqFwXO+oVle6I07pQ/e+td1lESb1jfyK9qeI+Kc=
X-Received: by 2002:a17:907:2d9e:b0:c41:6de7:7dee with SMTP id
 a640c23a62f3a-c506685458fmr461873166b.7.1794489225737; Thu, 12 Nov 2026
 05:13:45 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261111-ufs-rpmb-bus-v1-1-b07100e53f6c@flipper.net> <b2338a8e84366980f648b0e321e9f8edaaf633a9.camel@iokpp.de>
In-Reply-To: <b2338a8e84366980f648b0e321e9f8edaaf633a9.camel@iokpp.de>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 12 Nov 2026 17:13:34 +0400
X-Gm-Features: AclHuK83OfRmcNSAr3yNNJR2smWwrfyR_yt7neFWx9UxX0YmCS3qGDuhZxsxCk0
Message-ID: <CAKTNdwHcCA6taSrwmJ79KYSBREkOZgWrhcnCPG0M6=5XOw7pgQ@mail.gmail.com>
Subject: Re: [PATCH] scsi: ufs: core: Register the RPMB bus before adding
 devices to it
To: Bean Huo <beanhuo@iokpp.de>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K. Petersen" <mkp@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Avri Altman <avri.altman@sandisk.com>, 
	Can Guo <can.guo@oss.qualcomm.com>, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_051349_763964_90B9F153 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQmVhbiwKCk9uIFdlZCwgTm92IDExLCAyMDI2IGF0IDEwOjQz4oCvUE0gQmVhbiBIdW8gPGJl
YW5odW9AaW9rcHAuZGU+IHdyb3RlOgo+Cj4KPiBIaSBBbGV4ZXksCj4KPiBUaGFua3MuIFRoZSBj
b2RlIGlzIGNvcnJlY3QsIGJ1dCB0aGlzIGV4YWN0IGZhaWx1cmUgaXMgYWxyZWFkeSBmaXhlZCBp
bgo+IFN0YW5sZXkncyBzZXJpZXMsIHdoaWNoIGhhcyBiZWVuIG9uIHRoZSBsaXN0IHNpbmNlIFNl
cHRlbWJlcjoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MTQxNDQ5MTAuOTMx
NTE4LTEtc3RhbmxleWpodUBnb29nbGUuY29tCj4KPiBUaGUgb3JkZXIgdGhlcmUgbWF0dGVycy4g
T25jZSB1ZnNfcnBtYiBkZXZpY2VzIHJlZ2lzdGVyIGFnYWluLCB3aGljaCBpcyB3aGF0Cj4geW91
ciBwYXRjaCBkb2VzLCB0d28gYnVncyBjb21lIGJhY2s6IGEgdXNlLWFmdGVyLWZyZWUgb24gaG9z
dCB1bmJpbmQsIGFuZAo+IGNvbmN1cnJlbnQgUlBNQiByZXF1ZXN0cyB0aGF0IGdldCBlYWNoIG90
aGVyJ3MgcmVzcG9uc2VzLiBTdGFubGV5IG1lYXN1cmVkIGJvdGgKPiB3aXRoIEtBU0FOLiBQYXRj
aGVzIDEvMyBhbmQgMi8zIGZpeCB0aGVtLCBhbmQgMy8zIHR1cm5zIHJlZ2lzdHJhdGlvbiBiYWNr
IG9uCj4gbGFzdC4gVGFraW5nIHRoaXMgcGF0Y2ggZmlyc3Qgd291bGQgb3BlbiB0aGF0IHdpbmRv
dyBhZ2FpbiBpbiBtYWlubGluZSBhbmQgaW4KPiBzdGFibGUuCj4KPiBTbyBJIHdvdWxkIHByZWZl
ciB0byBkcm9wIHRoaXMgb25lIGluIGZhdm91ciBvZiB0aGUgc2VyaWVzLiBJZiB5b3UgaGF2ZSBh
IGJvYXJkCj4gd2hlcmUgUlBNQiBmYWlscyB0b2RheSwgYSBUZXN0ZWQtYnkgb24gdjUgd291bGQg
aGVscCwgcGxlYXNlIGhhdmUgYSB0cnkKPiBTdGFubGV5J3MgcGF0Y2hlcy4gdGhhbmtzCgpUaGFu
a3MgYSBsb3QgZm9yIHBvaW50aW5nIHRoaXMgb3V0LCBJIGhhZG4ndCBzZWVuIFN0YW5sZXkncyBz
ZXJpZXMKYmVmb3JlLCBhbmQgaXQgaW5kZWVkIGNvdmVycyBteSBjYXNlIGFuZCBtb3JlLiBJJ3Zl
IHNlbnQgbXkgdGVzdGVkLWJ5Cm9uIFN0YW5sZXkncyB2NiB0aHJlYWQuIExldCdzIGRyb3AgdGhp
cyBwYXRjaCBpbiBmYXZvciBvZiBTdGFubGV5J3MKc2VyaWVzLgoKQmVzdCByZWdhcmRzLApBbGV4
ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
