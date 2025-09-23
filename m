Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F2CCAC5A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 23:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqWgdqakHO/zeiS5T/Qj8a+U5jv0KMF24EuFcoGTsCE=; b=bE7n6gIpmkrjeU
	OF6HhC8I9oBcdVs/MBVz3Um/8kyAL4GMX9g89fsaivfWEetr0mq4n082J644hcYQ27cp7Mc5830Vm
	BuKnBzBuOJo9X3olCcgjvKJtZ/Ca/vrvLSxZC21es/7y31kb1ydnpwR2qgZdPvCD8FLUzsdeAmCu/
	hIhybW7+nSOwvo/UwyPk2pqlJpgFCw6eQNwHQi7ry+dSDJG/OLv5ordDthXHUVykh38rtUr/j96Vl
	kx9HMfrHIYRnSf39XWjqosSgDIM6qGJXEwiA+ZKZkt481rItShOBXuXAqti9gHvmnPalS0RtKFrko
	cgpc5Ksr4SE31EWF+X1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Cag-0000000FA89-3vNv;
	Tue, 23 Sep 2025 23:38:34 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Cad-0000000FA7c-3Tyj
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 23:38:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758670709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/uuMM0xLOGxLfbxqniNIAdFMc7QKfBFng3gt4+uLkoQ=;
	b=cjlrYfyYM+O3RLc5qiaylKqn12uzphp6xJuIjbyMNzrt42r0F1JrrKaj/uyyLitzyFCn85
	CySxf3OUXSswu0DN1Ve/4cqllRw9GILAqGJV4FCatwikBdOAYoTmBVU+NhwVXS1VIUwzPv
	aVON2jC/6xHX6uDdb39wThn0cC4G988=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-194-0KIQQ_rRMw6jK1cem4z3sw-1; Tue, 23 Sep 2025 19:38:27 -0400
X-MC-Unique: 0KIQQ_rRMw6jK1cem4z3sw-1
X-Mimecast-MFC-AGG-ID: 0KIQQ_rRMw6jK1cem4z3sw_1758670706
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-afcb72a8816so298990466b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Sep 2025 16:38:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758670706; x=1759275506;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/uuMM0xLOGxLfbxqniNIAdFMc7QKfBFng3gt4+uLkoQ=;
        b=QIAI5OiW9AfP7LmcLJ4r4wXIoDpSpS56PN1TbkLCZkYm0i0RHn7Y3CcKYR5q3XX2Qq
         uWX7QT17Q/fjYQiCAr5w7iU55KhQdq6sqJFIpDtn6/Dhrz3PqUFtjhOgMU5g6+w8EaB9
         oKV1I7ndWYxRm48jFmDKGBrStoxejkpHQ3zA4m6RLDLSsNappFy3qWfB5CTTVeKIvK9f
         487N8OtLFW80aezBgSv/oxO3ErwgwBYVfMXZ7DnWqYzRBrfe7WbcXt3g+QdeC1hJZz7i
         TJ1FWSmelH+Ojtf3dzFAtVkLzWZoRXpIyk4shhzN95Ec2rOnqlGSVLRChQxvhv9A2pA5
         MRSg==
X-Forwarded-Encrypted: i=1; AJvYcCW0yO7NQpW9NO0YJ+GnUpviJcnyJv9CLhwiBNVs2PkSN5xqrg9k2BYaDS2/Fq8dwR9LgdDKzxgV/x5G8GUJ+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXlw/MOgHa+0rNQpBuEcfpc/6x+8p20dibgls/KlkQGWr1IlO2
	zVdY/SwDuyrICEbbY97s6bsvUwVdVgh4tGcZUzXwXv3si+rKurNbdjfRchJE7pD7RSZSnET5vzT
	zCOQIDNekLnBj1R5BkvW6gRq4j2bTEGZcBwGJySmDS3ftSfiCHDfazIT1Kl/UAF/zDclnpou4hv
	xy6u5v9ULeuEh/xI+No9Phm20s3fyJvgYamMa7XuSX7j+vdiSu
X-Gm-Gg: ASbGncuank3AesL1tNPZ75Psdo+6VzGRZUWFud50ASp0IpSG+n/yQToghcmYaaVTavE
	kZN90+Jssn8Q/YMfNGQaYKZpMISIRUvIA02aKq7vHBYtzwy6TgObWZGyIMF0j/hVAMYfo3Y9mub
	QR49T11q2pDgkOIdQjAkVPgsrd+PAyhP0E+vq7/i+3ylDeDtXHwenm
X-Received: by 2002:a17:907:1c19:b0:b07:c1df:875 with SMTP id a640c23a62f3a-b302c2033d3mr406668266b.56.1758670706365;
        Tue, 23 Sep 2025 16:38:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGk3/1I4PXZi4R6ovX6yX2UPx6dYXxY3NvIilMqDU3auk9daLMwCgXTETaUDFSLe0sWzQlfr5kzWopjCBID8PU=
X-Received: by 2002:a17:907:1c19:b0:b07:c1df:875 with SMTP id
 a640c23a62f3a-b302c2033d3mr406665766b.56.1758670705938; Tue, 23 Sep 2025
 16:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <2a353817-f1da-4e7c-8b2c-0853779ec054@datenfreihafen.org> <j5dtkmnu55ycmqpaseazots7mevqyt5lafclvguxj6oz5r5cts@n563dsnvwuu7>
In-Reply-To: <j5dtkmnu55ycmqpaseazots7mevqyt5lafclvguxj6oz5r5cts@n563dsnvwuu7>
From: Brian Masney <bmasney@redhat.com>
Date: Tue, 23 Sep 2025 19:38:14 -0400
X-Gm-Features: AS18NWCDhXJt3fjtOycAWKBORuZpc7nsvPw6Hg7_H0HrU-XDN_ZZxWC4VIjhYMM
Message-ID: <CABx5tq+U_hcmxXDCGpTawsu5C0bDknC=p1Rq3FrtVuJq9gj2Pw@mail.gmail.com>
Subject: Re: Call for Participation: Embedded & IoT micro-conference at Linux
 Plumbers 2025
To: Sebastian Reichel <sre@kernel.org>
Cc: Stefan Schmidt <stefan@datenfreihafen.org>, Jan Lubbe <jlu@pengutronix.de>, 
	stefan.schmidt@linaro.org, linux-embedded@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, RD Babiera <rdbabiera@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	kernel@collabora.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xRgIXijzUUwLI6X1FhMXV66JoY3x1V1On9KFFGi-u9g_1758670706
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_163831_946572_37625FEC 
X-CRM114-Status: GOOD (  19.55  )
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

SGkgU2ViYXN0aWFuLAoKT24gVHVlLCBTZXAgMjMsIDIwMjUgYXQgNzowM+KAr1BNIFNlYmFzdGlh
biBSZWljaGVsIDxzcmVAa2VybmVsLm9yZz4gd3JvdGU6Cj4gSSB3b3VsZCBsaWtlIHRvIHByZXNl
bnQgLyBkaXNjdXNzIGZ1c2IzMDIgKG9yIG90aGVyIGNoaXBzIGhhbmRsZWQgdmlhCj4gdGhlIFRD
UE0gZnJhbWV3b3JrKSB1c2luZyBib2FyZHMgdGhhdCBhcmUgbWFpbmx5IHBvd2VyZWQgdmlhIFVT
Qi1DIGFuZAo+IG5vdCBoYXZpbmcgYW55IGJhY2t1cCBwb3dlciBzb3VyY2UuIFRoaXMga2luZCBv
ZiBzZXR1cCBpcyBvZnRlbiBmb3VuZAo+IG9uIFJvY2tjaGlwIGJvYXJkcyAoZS5nLiBMaWJyZSBD
b21wdXRlciBST0MtUkszMzk5LVBDLCBSYWR4YSBST0NLIDVCCj4gb3IgQXJtU29NIFNpZ2UgNSkg
YW5kIHF1aXRlIGEgcGFpbiwgYmVjYXVzZSBhIGhhcmQtcmVzZXQgZWZmZWN0aXZlbHkKPiBraWxs
cyB0aGUgYm9hcmQgcG93ZXIuCj4KPiBJIHdvdWxkIHByZXNlbnQgdGhlIHByb2JsZW0ocyksIHdo
YXQgSSd2ZSBkb25lIHNvIGZhciB0byBnZXQgaXQgd29ya2luZwo+IHRvIHNvbWUgZGVncmVlIHdp
dGggdGhlIHVwc3RyZWFtIGtlcm5lbCBhbmQgdGhlbiBkaXNjdXNzIGhvdyB0byBpbXByb3ZlCj4g
dGhlIHNpdHVhdGlvbi4KPgo+IEkgdGhpbmsgdG8gYmVjb21lIGEgd29ydGh3aGlsZSBkaXNjdXNz
aW9uIHRoZSBzZXNzaW9uIHdvdWxkIG5lZWQgc29tZQo+IHBlb3BsZSB0aGF0IGtub3cgdGhlIFVT
Qi1QRCBzcGVjaWZpY2F0aW9uIGFuZCBrZXJuZWwgc3Vic3lzdGVtLCBzdWNoIGFzOgo+Cj4gICog
SGVpa2tpIEtyb2dlcnVzIChVU0ItQyBtYWludGFpbmVyKQo+ICAqIEdyZWcgS3JvYWgtSGFydG1h
biAoVVNCIG1haW50YWluZXIpCj4gICogUkQgQmFiaWVyYSBvciBBbWl0IFN1bmlsIERoYW1uZSAo
R29vZ2xlIGlzIGFjdGl2ZWx5IHdvcmtpbmcgb24KPiAgICBlbnN1cmluZyBUQ1BNIGNvZGUgYmVp
bmcgY29tcGF0aWJsZSB3aXRoIHRoZSBVU0ItUEQgc3BlY2lmaWNhdGlvbgo+ICAgIGFuZCB0aGV5
IHdlcmUgdW5oYXBweSBhYm91dCBzb21lIG9mIG15IGNoYW5nZXMgOikpCj4KPiBQLlMuOiBJJ20g
bm90IHN1cmUgaG93IHRoZSBDZlAgZm9yIHRoZSBMUEMgbWljcm8tY29uZmVyZW5jZXMgd29ya3Mu
Cj4gUGxlYXNlIHRlbGwgbWUgaWYgdGhpcyBtYWlsIGlzIG5vdCBnb29kIGVub3VnaCBhbmQgSSBu
ZWVkIHRvIGluc2VydAo+IHNvbWV0aGluZyBpbnRvIHNvbWUgc3lzdGVtLgoKWW91IG5lZWQgdG8g
c3VibWl0IGEgcHJvcG9zYWwgdG8KaHR0cHM6Ly9scGMuZXZlbnRzL2V2ZW50LzE5L2Fic3RyYWN0
cy8uIFlvdSdsbCBoYXZlIHRvIGNyZWF0ZSBhbgphY2NvdW50LCBhbmQgdGhlcmUgd2lsbCBiZSBh
ICJTdWJtaXQgbmV3IGFic3RyYWN0IiBidXR0b24gYXQgdGhlCmJvdHRvbSByaWdodCBvZiB0aGUg
cGFnZS4KCkkgd2VudCB0aHJvdWdoIHRoZSBwcm9jZXNzIGZvciBhIHRhbGsgdGhhdCBJIHN1Ym1p
dHRlZDogIkZpeGluZyBDbG9jawpUcmVlIFByb3BhZ2F0aW9uIGluIHRoZSBDb21tb24gQ2xrIEZy
YW1ld29yayIuIEl0J3MgcmVsYXRlZCB0byB0aGlzCndvcms6Cmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWNsay8yMDI1MDkyMy1jbGstdGVzdHMtZG9jcy12NC0wLTkyMDVjYjNkM2NiYUBy
ZWRoYXQuY29tL1QvCgpCcmlhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
