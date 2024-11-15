Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D18DD68BC6
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 16:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXF3yfJNGa23rybfijeqzQlHPcduyKadScMSjo7TqIc=; b=Jx647cclZV/WjN
	HlyIvr3yMi+3iA0/Z17BMKe+3AP7Mr+Q9dZ/1ZlSnIyH8rXMUqzZj27N5vBOGbJxU8pBAuGI7Z+Wg
	2WxTgyicIZ3MbeeRMHXwmN5ZqQrFf79H+EH+5oZ50Xfb/MpEAGRHpAFfVuVXbVMBt0w1kYsTc2Pcu
	Zj0TFwQPvM17fQzPs3Tqz6D2RE94f7AOuqHKEETKud4EJF4WO3PlAYGVkY3If9/h0VMXxdYWGANiA
	mzK3Ql2RqQp2QNITknrjVB3y0PhNb9uYlAXb/Jd4QmDYcC6Gw/eHlJ2JEFLTIr+UpnDwht0ftF0bD
	H4xOScmWySgKHo3o+KVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tByzr-00000003JI7-33Qt;
	Fri, 15 Nov 2024 16:16:35 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tByyv-00000003JBW-46I9;
	Fri, 15 Nov 2024 16:15:39 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-539ee1acb86so1974564e87.0;
        Fri, 15 Nov 2024 08:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731687336; x=1732292136; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf0zb4VfVYz2bFnhNWmndenFn6+Q+jSFdMU6+/qUZVw=;
        b=ClkSZpGsMD6CfFNW5M/xm3pMz7/C3BMDLxWmWxZcyc73KQ/rsBd30iAQtiFTECbnQU
         vSjNAu7mvhJaUxz5H0p8tsoH5wjFvkgVLVffOeISlFheDne5NUDYAL9zBthfPg2zg8Jw
         UmmxXdMy7/iLJm1Z0yEUaEIeOfKxPpe3USw1cG7hNPVCa0COZ2mSNlkHgZhNaK2Mbu/x
         LV9GuO5Tz6Z+1L6eazrK8xMkgZ3TNji+ELQQ5pcfXg+xL0g0qC8IdxhduoqVGXR8KRFK
         h/9hiCtmwOrC9iVpvwhT2gyDi/WCpif8qKAwut29Onb4Gw4kLPIZCSgZ011gipvYKGo8
         w1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731687336; x=1732292136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qf0zb4VfVYz2bFnhNWmndenFn6+Q+jSFdMU6+/qUZVw=;
        b=UhNSaABZzktMMnN2f9peRdz6ntqDn0Dr5y5t7qnKpkpxwNTEfXNcaRNMF6ReezOyqZ
         3bFiaw1SgRFnX6Sa+MM5FN6zEG88SbKOPutclWHw2ecOj9XM16EcxEtzEMpI7gg8zlGN
         lXIHlY/DBUhab9bsyRimbxQvD2SlCKcAKz6OnKYa5wfGZ5nIeoTe3M1hDJrwKAbxaJlF
         0ts/USYwoyEWVhIdOSPVorLgEshNJ6XKMPL6xHsI7VwjKxn3cLxUDE/GB7NF2QTx9lbT
         oitIemVbZOZb0L3vT767+8t6+yCR3gae1a4zqzlcRU15QvDl97Uw4jLApbHt7q/vpM50
         ZW6g==
X-Forwarded-Encrypted: i=1; AJvYcCWH/Wq2+AgncVSuyC7rW2YobZqDxEBcvrcX8G+Ed1qTEeChh3ySUZhLk+ZYHBWtI/ORzi7vUIWT4jzpVYVrJow=@lists.infradead.org, AJvYcCXWTGRsSmXlXPD2agkX+6hf58Qe7GbvpBzthvj4WDvud0nDpUV9T/Dpr6gygnV9A9IerHRhQ6yGZwNv8vmFk6gw@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8o6lq+KyYBo4z+54ILc8D6dj87nVNqf6BHA1MQ4vlr69NLoru
	Xs2SOZNd04epudbq/KdnzJMyf/9HFimNS9OElnE6zL9bS83MJ8eqi2aHWtYEaOL1aR7+joTRFkB
	5L8I0lFIp+DfvBa2lN6fboTVaIPI=
X-Google-Smtp-Source: AGHT+IEMckUqroiNvqBAubYUa6y/ZYk5x3dY2AgrwbVdsf0BF7y5A7gqM/UNhT4Pfc3C7QURedxq81KHBe0chgKmZ/Q=
X-Received: by 2002:a05:6512:3e28:b0:53d:a6c8:fb94 with SMTP id
 2adb3069b0e04-53dab2a2213mr1563377e87.28.1731687335399; Fri, 15 Nov 2024
 08:15:35 -0800 (PST)
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
In-Reply-To: <20241111045408.1922-7-honyuenkwun@gmail.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Fri, 15 Nov 2024 17:15:23 +0100
Message-ID: <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_081538_018560_0D6AB4AC 
X-CRM114-Status: GOOD (  12.45  )
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

SGVsbG8gSmltbXksCgpPbiBNb24sIE5vdiAxMSwgMjAyNCBhdCA2OjAx4oCvQU0gSmltbXkgSG9u
IDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIFJLMzU4OCBTaW5nbGUgQm9h
cmQgQ29tcHV0ZXIgaW5jbHVkZXMKPiAtIGVNTUMKPiAtIG1pY3JvU0QKPiAtIFVBUlQKPiAtIDIg
UFdNIExFRHMKPiAtIFJUQwo+IC0gUlRMODEyNSBuZXR3b3JrIGNvbnRyb2xsZXIgb24gUENJZSAy
LjB4MS4KPiAtIE0uMiBNLWtleSBjb25uZWN0b3Igcm91dGVkIHRvIFBDSWUgMy4weDQKPiAtIFBX
TSBjb250cm9sbGVkIGhlYXQgc2luayBmYW4uCj4gLSAyIFVTQjIgcG9ydHMKPiAtIGxvd2VyIFVT
QjMgcG9ydAo+IC0gdXBwZXIgVVNCMyBwb3J0IHdpdGggT1RHIGNhcGFiaWxpdHkKPiAtIE1hbGkg
R1BVCj4gLSBTUEkgTk9SIGZsYXNoCj4gLSBNYXNrIFJvbSBidXR0b24KPiAtIEFuYWxvZyBhdWRp
byB1c2luZyBlczgzODggY29kZWMgdmlhIHRoZSBoZWFkc2V0IGphY2sgYW5kIG9uYm9hcmQgbWlj
Cj4gLSBIRE1JMAoKaW4geW91ciB2MSBwYXRjaCBzZXJpZXMgeW91IG1lbnRpb25lZCB5b3UgZG8g
bm90IGhhdmUgYWNjZXNzIHRvIEVNTUMKdG8gdGVzdC4gSSBhbSBoYXBweSB0byB0ZXN0IEVNTUMs
IGJ1dCBJIGhhZCBwcm9ibGVtcyB3aXRoIHRoZSB2MiBhbmQKdjMgcGF0Y2hlcy4KdjIgZHRzIGRp
ZCBub3QgY29tcGlsZSBhbmQgSSB3YXMgZ2V0dGluZyBlcnJvcnMgZm9yIHRoZSBoZG1pMCBlbnRy
aWVzCmxpa2UgIkxhYmVsIG9yIHBhdGggaGRtaTAgbm90IGZvdW5kIi4gSSBhc3N1bWUgSSBhbSBt
aXNzaW5nIHBhdGNoZXMuCkFmdGVyIHJlbW92aW5nIGl0IGNvbXBpbGVzIGJ1dCB0aGUgYm9hcmQg
ZG9lcyBub3QgYm9vdC4KCnYzIHBhdGNoZXMgZG9uJ3Qgd29yayBhZ2FpbnN0IDYuMTItcmM2L3Jj
NyBzbmFwc2hvdC4gVGhlIHBhdGNoIHRoYXQKbW9kaWZpZXMgdGhlIDUgcGx1cyBkdHMgZmFpbHMu
IEkgYWdhaW4gYXNzdW1lIEkgYW0gbWlzc2luZyBvdGhlcgpwYXRjaGVzLgoKSWYgeW91IGhhdmUg
c29tZSBpbmZvIHdpdGggd2hpY2gga2VybmVsIG9yIG90aGVyIG1vZGlmaWNhdGlvbnMgSSBjYW4K
dXNlIHlvdXIgcGF0Y2hlcywgdGhlbiBJIGFtIGhhcHB5IHRvIGRvIHNvbWUgdGVzdGluZy4KCkNo
ZWVycywKTWFyY28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
