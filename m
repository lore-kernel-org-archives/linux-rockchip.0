Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE25C5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 18:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlP+1Ke8JSV1Eco1hTca89tXq16wzTaa7AoiuxS6LzE=; b=DEmRhBs/kMAcr+
	2/pVfk5wXDCyab9nHkGHj6IYb7y4+Wc8VKBHuDpK9wPlYUCGUgEQFFyiiqxkaDXzczwj4PtZ2Sk68
	8v+UJoxJiP7CIN4GqQv9Q1XhmwqOgkWpVZnVq1BlDGgYB/elBUIIccnKbweCNJ+ne4U43Vx7MFvh/
	0dA2Vpa2nZsaxtf268bipG1UDogk3L2uSIE0sr3AGFi5RpsjOoS5N7Pfr4HgsTPHuUgiJ9puIFiOE
	RAxhZ/jnR05+t3RX7ZsNvLAPMvkh31pvcl34YnNqhrMI99LaDfrvlwTz22wYrwFvCsX2+OVyCaE29
	6AkgBtlxTQ5EzslS4rfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfzs-0000000502O-2bo9;
	Sun, 16 Aug 2026 18:54:16 +0000
Received: from mail-yx1-xb12d.google.com ([2607:f8b0:4864:20::b12d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfzp-0000000501M-0reA
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Aug 2026 18:54:14 +0000
Received: by mail-yx1-xb12d.google.com with SMTP id 956f58d0204a3-66898920476so369295d50.3
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Aug 2026 11:54:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786906451; cv=none;
        d=google.com; s=arc-20260327;
        b=nP1pxQ3fQVLw40/eM71K4tSGI2kKl7DY8TmXpoTmJZZDLveeI4palBQSBMfAQbl6c2
         V7ET08hxuNi6mutWOmI5lhzcHV0D9aILXiz0R9zNFHZeXOeJEP7J9AxlfszvBLUN7hEr
         E+OEjB9i4uhqSaU+SlEp85ZI1TBm4WsfLBsQuacI9wEpDKPiqAHYcvwa3SN3RBtkdTab
         iqh7niRP46IbEqqWYKcjzi9WaXKq12oNdfF8CTmiToxcEJxqmjm3mqA2SmXV4Qw2yOPn
         WXEN2iZzxCFKtk8kTvi8T1z9xmI6Cq4cldpzLO7uGkUP6wVhMpH+/dqJnqwxAMeFtXxJ
         gUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=K87DdrzV6T05ieuNKPZOU2wz5knyEjMGfCEK8pz9YqE=;
        fh=GC8Y2f6YUpUCtuWuPkPN0WvImeyQXtnZ54JfmTcfmuQ=;
        b=Y1s7UHNEsK3LSnUOZxy7/pLqapHaX8kLbbVhml7nKq9scoYB+VrG5gZSofhFsxqWVC
         JT/sWlCWrJDyl3fqgDcnKtkDrnHBqAL+cZxdo/rzsbAJmn7EbbGnodR8lz3REvwdwVkx
         s49M3UCYmEyrrXqJtvoFbcL05KNLQ6LRkOddIlu5lscPrNR50PnPNRHl20LxEnB8pEVi
         Qj4gHxsu+2FTgxGNdU+LPP4etJOhftdsId7GEpgjQGj9QHcc2aKwZNpyiQY+go1liaC1
         MfxwGZOb7qixwEftMnGHZ11X7slpmRWUueD49roap0Lw7xMZaifIjgLzpZeYN/924TUA
         CSUQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786906451; x=1787511251; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=K87DdrzV6T05ieuNKPZOU2wz5knyEjMGfCEK8pz9YqE=;
        b=XibtJhHE4RdBUpLdlBB0yzkCMbvhBVcgHwUIOZSfzXWEwWOKTKyNhsf/GqGLl/e7DV
         FI+N0RJl8Ux+8D+EKKI/jwWTcAGlw34hhUL2cg761AFAX7T8EX812zXVNKYxUek0d1m+
         Gt5RdyQdbBkgJ7xkR05RYTyjfzX/87YtOVo2sB8ti6X6ymNbqbXqzzpuntha6h0vvGJz
         tA/2+mQA5aoVzlCXy7K+Rcuddxh+ejNUaOmnqPYSIwquq7gYRint7lSKPfP1X74he2ml
         3aC5t8RcKO343Oq3298ueW+NOuuV/jvfAkzBXYY+KKVAtJNV/mv7SZEC/G84triFGTO7
         S8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786906451; x=1787511251;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=K87DdrzV6T05ieuNKPZOU2wz5knyEjMGfCEK8pz9YqE=;
        b=cCJKU36upo3IOTc2vWWM5WJDOANsxYnh2OFYYG5cYLNxIPRBltBJwBOGzFgRSxOkHh
         GejUacgX5eeTLsXeGsxt8lYWMf32WfNrLK4MNgyqFvHMQMllO0lxhSZSdP2ZQeypSDL+
         ogsH4JefX+Dr0URXQyvyU3HgmRp2gT/IQBpJiLlUPoY78dcNAoqdQ+OlQ9JQPJfiOHPv
         tI+5If1NTNGwEbCoFyRU03L+6xyofcnHHb8mx/zR5pJj1NnDdt58z50e1IWEpI9JvbBv
         O3OIwlC304HTDo/MakJ1zsZYZKjSCSxoXxjDQX5j3ej/7nu6GQjZ6eke8/+vozPKcjn/
         1BKQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrb3mUi2xHtbaigNSvLU6EClNmpC35oc/e2SHwZ5zKdHz1tR8NvJp8c5EFvPJmBCDhNFWuQPeZ+1/x0bi5WLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNMu56+0X7h516pj727L7wCew76DqS8HdFd7xix0d4bKj7XB4R
	oKSUctdpSivxU6Mn2uh7BbhH6oO5AwgdCiC2947YlrbQkrghjhrbdlcxU79oAJqSf+O2dLTxdG1
	bomjEtPNr6q5kJP9GWVts5bUUZ2DUfSw=
X-Gm-Gg: AR+sD12l3vQltCE4QF41foGxa0lCgGNEEW1YQLyxJcQIOKA7qy3gjPzTW5mYcrcDa+W
	Z6uMOoYIe1SDIDVIH/1pgxUYxqcAbIU/oVJtgqKk6kBJtK96ZtKBzxbWjHamHYyDBXziVHOc5Y0
	68OZKUE7A6cMsHroBf7Qhl4a31D0Ksizsu2R4puAcg98vNdVPvcCxOreAert6mJbU9Cv7zFqUD6
	icdbK7YiATHBs1EDr15Vn+dkrFNbUy0gnxcWXvuMl+I3bslSq33A6r+5vq9ndr+8V3BYah9Rc/B
	6mw367R0CkN+Whzfo9Tq3rUcAsJuxtDBETolpD7MId9B+TIpZCv6QquC16U72dXTzk/w1HqKf3z
	K
X-Received: by 2002:a53:d004:0:b0:668:6e5:16d9 with SMTP id
 956f58d0204a3-66c72cbb9c8mr4687899d50.2.1786906451288; Sun, 16 Aug 2026
 11:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260815130556.68876-1-royalnet026@gmail.com> <20260816041233.3566625-1-gahing@gahingwoo.com>
In-Reply-To: <20260816041233.3566625-1-gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 16 Aug 2026 20:53:59 +0200
X-Gm-Features: AcwNN1Uh4_l9nX5DwMZE2uVyBVHcgamwlhxHxsLdAI4oiEGskahB9NDY4Ow6O_8
Message-ID: <CAEWPSH54fhzKEYR1cgTskNgKryDEMaZOY1y5aFdKQQyzfKbYfg@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, chaoyi.chen@rock-chips.com, 
	alchark@flipper.net, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_115413_301845_D706C00F 
X-CRM114-Status: GOOD (  25.32  )
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

SGkgSmlheGluZywKCkkgcmFuIHRoZSBkaXNjcmltaW5hdGluZyBjb3VudHMgb24gUkszNTg4LiBE
ZXRhaWxzIGJlbG93LCBidXQgZmlyc3QgYQpzb3VyY2UtbGV2ZWwgb2JzZXJ2YXRpb24gdGhhdCBj
aGFuZ2VzIHdoYXQgbXkgcmVzdWx0IGNhbiB0ZWxsIHlvdS4KCk5laXRoZXIgbWVzYS0yNS4zLjAg
bm9yIGN1cnJlbnQgbWFpbiBjb250YWlucyB0aGUgbW9kdWxvIGZvcm0gaW4Kcmt0X3JlZ2NtZC5j
LiBJbiBib3RoLCBCU19PV19DRkcgKDB4NDA1MCkgaXMgZW1pdHRlZCBjb25kaXRpb25hbGx5IG9u
Cm9wZXJhdGlvbi0+ZGVwdGh3aXNlIG9ubHksIHdpdGggbm8gZGVwZW5kZW5jZSBvbiBvdXRwdXQg
Y2hhbm5lbCBjb3VudDoKCiAgICBpZiAob3BlcmF0aW9uLT5kZXB0aHdpc2UpIHsKICAgICAgIEVN
SVQoUkVHX0RQVV9CU19PV19DRkcsIERQVV9CU19PV19DRkdfU0laRV9FXzIoMykgfAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgRFBVX0JTX09XX0NGR19TSVpFX0VfMSgzKSB8CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBEUFVfQlNfT1dfQ0ZHX1NJWkVfRV8wKDMpKTsgICAv
KiAweDM2YyAqLwogICAgfSBlbHNlIHsKICAgICAgIEVNSVQoUkVHX0RQVV9CU19PV19DRkcsIERQ
VV9CU19PV19DRkdfU0laRV9FXzIoMSkgfAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
RFBVX0JTX09XX0NGR19TSVpFX0VfMSgxKSB8CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBEUFVfQlNfT1dfQ0ZHX1NJWkVfRV8wKDEpKTsgICAvKiAweDEyNCAqLwogICAgfQoKKG1lc2Et
MjUuMy4wLCBzcmMvZ2FsbGl1bS9kcml2ZXJzL3JvY2tldC9ya3RfcmVnY21kLmMgYXJvdW5kIGxp
bmUgMjM0Owp1bmNoYW5nZWQgaW4gbWFpbiBhcyBvZiAyNi4xLWJyYW5jaHBvaW50LikKClNvIEkg
dGFrZSBpdCB0aGUgKG9jICUgMzIpIGV4cHJlc3Npb24gaXMgZnJvbSBvbmUgb2YgeW91ciAxMDIg
Y29tbWl0cywKZml0dGVkIGZyb20gdmVuZG9yIGNhcHR1cmVzPyBUaGF0IHdvdWxkIGFsc28gZXhw
bGFpbiB0aGUgZXh0cmEgYml0cyBpbgp5b3VyIHR3byBjb25zdGFudHM6IGRlY29kZWQgYWdhaW5z
dCByZWdpc3RlcnMueG1sLCAweDgwMDExMTExIHZzCjB4ODAwMTEwMTEgZGlmZmVyIG9ubHkgaW4g
Yml0IDgsIHdoaWNoIGlzIHRoZSBMU0Igb2YgU0laRV9FXzIgKGJpdHMKOC0xMCkuIFlvdXIgd29y
a2luZy1hdC01NiBmb3JtIGhhcyBTSVpFX0VfMj0xIGFuZCB0aGUgZmFpbGluZyBmb3JtIGhhcwpT
SVpFX0VfMj0wIC0gYW5kIHVwc3RyZWFtJ3Mgbm9uLWRlcHRod2lzZSB2YWx1ZSBhbHdheXMgaGFz
IFNJWkVfRV8yPTEuClRoZSB0aHJlZSBkYXRhIHBvaW50cyBhcmUgY29uc2lzdGVudCB3aXRoIFNJ
WkVfRV8yIGJlaW5nIHdoYXQgbWF0dGVycywKcmF0aGVyIHRoYW4gdGhlIG1vZHVsby12cy1wYXJp
dHkgcHJlZGljYXRlIGFzIHN1Y2guIFlvdXIgdmFsdWVzIGFsc28KY2FycnkgUkdQX0NOVEVSPTgg
KGJpdCAzMSksIE9XX1NSQz0xIChiaXQgMCkgYW5kIGJpdHMgMTIvMTYgaW4gdGhlCnJlc2VydmVk
IHJhbmdlLCB3aGljaCB1cHN0cmVhbSBuZXZlciBzZXRzOyBpZiB0aG9zZSBjYW1lIGZyb20gYSB2
ZW5kb3IKY2FwdHVyZSBpdCBtYXkgYmUgd29ydGggY2hlY2tpbmcgd2hpY2ggb2YgdGhlbSBSSzM1
NzYgYWN0dWFsbHkgbmVlZHMuCgpOb3cgdGhlIG1lYXN1cmVtZW50LiBNeSBydW5zIGFyZSB3aXRo
IHVwc3RyZWFtIE1lc2EgKG1haW4sCjI2LjEtYnJhbmNocG9pbnQtNTUwNSwgY2xlYW4gY2hlY2tv
dXQpLCBpLmUuIHRoZSBjb25zdGFudCAweDEyNCBmb3JtLApvbiBSSzM1ODggd2l0aCB0aGUgaW4t
dHJlZSByb2NrZXQgZHJpdmVyICg3LjItcmM3LCByb2NrY2hpcC1kZXZlbApiYXNlKS4gU3RhbmRh
bG9uZSBtaW5pbWFsIG1vZGVsczogQ09OVl8yRCAxeDEsIDY0IGlucHV0IGNoYW5uZWxzLCA4eDgK
c3VyZmFjZSwgdWludDggYXN5bW1ldHJpYyBxdWFudGlzYXRpb24gaW4gdGhlIG1vYmlsZW5ldCBz
dHlsZSwgb3V0cHV0Cnplcm8gcG9pbnQgMCBzbyB0aGUgaGFyZHdhcmUncyBjbGFtcC1hdC16cCBj
YW5ub3QgbWFzayBhbnl0aGluZzoKCiAgMXgxIGNvbnYsIDY0IGluLCA1NiBvdXQ6ICAgNTYvNTYg
Y2hhbm5lbHMgd2l0aGluICsvLTEgKDQ3CmJpdC1leGFjdCksIG1heGRpZmYgMQogIDF4MSBjb252
LCA2NCBpbiwgODggb3V0OiAgIDg4Lzg4IGNoYW5uZWxzIHdpdGhpbiArLy0xICg4MQpiaXQtZXhh
Y3QpLCBtYXhkaWZmIDEKICAxeDEgY29udiwgNjQgaW4sIDEyMCBvdXQ6ICAxMjAvMTIwIGNoYW5u
ZWxzIHdpdGhpbiArLy0xICgxMDYKYml0LWV4YWN0KSwgbWF4ZGlmZiAxCgpSZWZlcmVuY2UgaXMg
dGhlIHJhdyBDUFUgaW1wbGVtZW50YXRpb24gcGVyIGNoYW5uZWwgKG5vdCBjbGFtcGVkIHRvIHRo
ZQp6ZXJvIHBvaW50IC0gc2FtZSBsZXNzb24gYXMgb3BlcmF0b3IgMjgpLiBObyBjaGFubmVsIGhh
ZCBhIGNvbnN0YW50CnJlZmVyZW5jZSwgc28gdGhlIG1hdGNoZXMgYXJlIGNvbXB1dGVkIHJhdGhl
ciB0aGFuIHRyaXZpYWwsIGFuZCBubwpjaGFubmVsIHNhdCBwaW5uZWQgYXQgdGhlIG91dHB1dCB6
ZXJvIHBvaW50LiBUaGUgdGhyZWUgam9icyBhbHNvCmhhcHBlbmVkIHRvIGxhbmQgb25lIHBlciBO
UFUgY29yZSAocGVyLWNvcmUgSVJRIGNvdW50ZXJzIHdlbnQgMC0+MSksCnNvIHRoZSByZXN1bHQg
aXMgbm90IHNwZWNpZmljIHRvIGEgc2luZ2xlIGNvcmUuCgpTaW5jZSB1cHN0cmVhbSBlbWl0cyB0
aGUgc2FtZSB3b3JkIGZvciBldmVyeSBvYywgYQpjbGVhbiByZXN1bHQgYXQgNTYvODgvMTIwIHNh
eXMgUkszNTg4IGRvZXMgbm90IG5lZWQgYW4gb2MtZGVwZW5kZW50CnRvZ2dsZSBhdCAweDQwNTAg
YXQgYWxsLCBhdCBsZWFzdCBmb3IgdGhlc2Ugc2hhcGVzIC0gd2hpY2ggaXMgdGhlIHRoaXJkCnBv
c3NpYmlsaXR5IHlvdXIgdHdvIGZvcm1zIGNvdWxkIG5vdCBkaXN0aW5ndWlzaC4gSXQgZG9lcyBu
b3QgdGVsbCB1cwp3aGljaCBvZiB5b3VyIHR3byBmaXR0ZWQgZm9ybXMgaXMgY2xvc2VyIHRvIHdo
YXQgUkszNTc2IHdhbnRzLCBidXQgaXQKZG9lcyBzdWdnZXN0IGNvbXBhcmluZyB5b3VyIGZpdHRl
ZCB2YWx1ZXMgYWdhaW5zdCB0aGUgZmllbGQgY29tcG9zaXRpb24KYWJvdmUgcmF0aGVyIHRoYW4g
YXMgb3BhcXVlIGNvbnN0YW50cy4KCkhhcHB5IHRvIHJ1biBvdGhlciBzaGFwZXMgaWYgdGhhdCBo
ZWxwcyBuYXJyb3dpbmcgaXQgZG93bi4KCkJlc3QgcmVnYXJkcywKSWdvcgoKCk9uIFN1biwgQXVn
IDE2LCAyMDI2IGF0IDY6MTLigK9BTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4g
d3JvdGU6Cj4KPiBIaSBJZ29yLAo+Cj4gVGhhbmsgeW91IGZvciBydW5uaW5nIGl0LCBhbmQgZm9y
IHRoZSB1bmNsYW1wZWQgcmVmZXJlbmNlLgo+Cj4gWW91ciAxMDAxIGRvZXMgbm90IGRpc2NyaW1p
bmF0ZSBiZXR3ZWVuIHRoZSB0d28gZm9ybXMsIHdoaWNoIEkgc2hvdWxkIGhhdmUgc2FpZAo+IHdo
ZW4gSSBkZXNjcmliZWQgdGhlbS4gRElWX1JPVU5EX1VQKDEwMDEsMTYpIGlzIDYzLCBvZGQsIHNv
IHRoZSBwYXJpdHkgZm9ybQo+IGdpdmVzIDB4ODAwMTEwMTEgdGhlcmUgYW5kIHNvIGRvZXMgb2Mg
JSAzMi4gVGhleSBkaWZmZXIgb25seSB3aGVyZSBhIGNvdW50IGlzIGEKPiBtdWx0aXBsZSBvZiBu
ZWl0aGVyIDMyIG5vciAxNi4gT24gUkszNTc2IHRoZSBmYWlsaW5nIG9uZSB3YXMgNTYsIGFuZCA4
OCBvciAxMjAKPiB3b3VsZCBkbyBhcyB3ZWxsLiBTbyB5b3VyIGNsZWFuIHJlc3VsdCBydWxlcyBu
b3RoaW5nIG91dCwgYW5kIEkgYW0gbm90IHJlYWRpbmcKPiBpdCBhcyBzdXBwb3J0IGVpdGhlciB3
YXkuCj4KPiBPbiBteSBzaWRlIHRoYXQgcmVnaXN0ZXIgdHVybmVkIG91dCB0byBiZSB0aGUgd2hv
bGUgb2YgaXQuIEEgMXgxIGxheWVyIHdpdGggNTYKPiBvdXRwdXQgY2hhbm5lbHMgaGFkIHRpbWVk
IG91dCBpbiBldmVyeSByb3VuZCBpdCBldmVyIHJhbiwgMzIgb2YgNTYsIGFuZCB3aXRoCj4gdGhl
IHBhcml0eSBmb3JtIGl0IGlzIDU2IG9mIDU2IGV2ZXJ5IGNoYW5uZWwgY29ycmVjdCwgd2l0aCB0
aGUgb2xkIGZvcm0KPiByZXByb2R1Y2luZyB0aGUgdGltZW91dCBpbiB0aGUgc2FtZSBsb2cuCj4K
PiBZb3UgYXJlIHJpZ2h0IGFib3V0IHBlcmNoLnB5IGFuZCB0aGVyZSB3ZXJlIHRocmVlIG9mIHRo
ZW0gcmF0aGVyIHRoYW4gb25lLiBUaGUKPiBpbm5lciBtYXhkaWZmLCB0aGUgaW50ZXJpb3Igc3Rh
dGlzdGljcyBhbmQgdGhlIHJhdyByb3cgZHVtcCBhbGwgYXNzdW1lIGEKPiBzdXJmYWNlIHdpdGgg
YW4gaW50ZXJpb3IsIGFuZCBhbGwgdGhyZWUgcmFpc2Ugb24gYSAxeDF4MTAwMSBjbGFzc2lmaWVy
IGFmdGVyCj4gdGhlIHVzZWZ1bCBsaW5lcyBoYXZlIHByaW50ZWQuIEZpeGVkIGhlcmUsIGFuZCBj
aGVja2VkIG9uIHRoZSBob3N0IGF0IDF4MXgxMDAxLAo+IDV4NXg4IGFuZCA1Nng1Nng2NCBiZWZv
cmUgZmxhc2hpbmcsIHdoaWNoIGlzIGEgY2hlY2sgSSBzaG91bGQgaGF2ZSBiZWVuIHJ1bm5pbmcK
PiBhbGwgYWxvbmcuCj4KPiBBbmQgSSB3aWxsIHJlLXNjb3JlIG9wZXJhdG9yIDI4IGFnYWluc3Qg
dGhlIHVuY2xhbXBlZCBvdXRwdXQuIFRoZSBtYXgoY3B1LCB6cCkKPiByZWZlcmVuY2UgZG9lcyBt
b3ZlIGNoYW5uZWxzIHRoYXQgYXJlIG5vdCB3cm9uZywgYW5kIHJlYWRpbmcgYW4gZW1wdHkKPiBj
b252b2x1dGlvbiBvZmYgaXQgaXMgdGhlIGtpbmQgb2YgbWlzdGFrZSBJIHdvdWxkIHJhdGhlciBu
b3QgbWFrZSB0d2ljZS4KPgo+IEppYXhpbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
