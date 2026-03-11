Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6558B1125839
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 14:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rNq2frbM3npcRnLfV6KLTsCxRzW/jykBARmUxw56ao=; b=v/zfvfOef2KZmF
	yMbgu+ax7QtVPMGUocOBkCusBhI2Rhvb/YF54YlxN/uQYPzGdw8T6NFZxxWBHv7FI8KxAX5GJdRkm
	KtXIW7/jEIIdJLSNbIH6S7w1I8sBoB4YvFodDH5VPnhkvPEuHuVlVvnsiYhJytCV4OzHQuuGaEtoP
	DxIil4zBrXQlZ9poxgkomJRJvrmrFfYBAIM4nJ57nRaHdlhOGmo90UU9qGq1fwq2g+FXwrT0uvQK+
	OIYbaGdFTAppDCfGMAlnakN8KFt6D4NlmGBL9WQ00gkir7AicHEpK7n++4iF0DlX8tgVB3/llywOA
	1pjySffbUsgbUoq5XJXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KVr-0000000Bheo-1FMD;
	Wed, 11 Mar 2026 14:26:15 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KVo-0000000Bhdj-12uO
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 14:26:13 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-509101189f1so36835981cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 07:26:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773239170; cv=none;
        d=google.com; s=arc-20240605;
        b=XRrN7j0ubn9ohcTr3cJ3RUojhOJUnh4p8+DaJhwubVKAlUTGIUW9M57R0CPLzFFJHT
         I6Gm0jbvmqiiIs4bathIdMgwlusKN8SyO/95qJMx5DUebR3FiLgyxZydw0rhMiprNgVg
         8Z5tyWwhKJsnlovdSD9T2+nc9waivtMbr6iKYtZFwobOH7TaxBXSmvSZbjZKXfxVR+vf
         Fdp9RS87G8+6j16VJAxTaM3V/7f3QLqUCoSI7vWLTsePJTg9Tvoo0H0YkgTK+LlGARP9
         1i3nW/g6UDWpHirFNc2HKrrC+l2JTzSTHuN0tJivatZydws7kAlaTqePnDlorjIo+UPB
         c37g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        fh=f/kd/cItU0TSam7qhS4iIRct0+wwICJ0x0P9a2mgobo=;
        b=Lpy6BWHJjEpEMPwwdrXUGkCddzbMJQFetfdthMhvVpXz3Bn4wmdj/R65vriUWJMCy8
         O81KQjl3urWaOhZiG/wf27IvulcKnU6U36bsm9rkbU3XfmaN7gFhjZw31hN2LBR3gRo/
         Q9aJKUd8PADL5Kt+Jp2J2Pwk6pIrTtuSbIehgylyGuyJv7T0YRvaaa001EsGyUwlkHEN
         j+fx82TU6kTKW9uhsHvsysbNqomepJo+l9vUZplteRSKbOqBtHuD7MDEvwm8zYBctqnL
         ybvkLR89VsCvsbKtUlA5wJl9D0j+WH3nCWJrkIaBLMzF7AYFguqnkr9G/+cwuHiloe7y
         dZTw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773239170; x=1773843970; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        b=bLkgxLRXTY+WlCvq6zNPfHe5othM/kfyrY9y8i38dnhowf/rVuOO7uR568s56ibY4O
         zlKJrVXDWcOjfz+vwa3SFkbDToNhyeALB4YotpesD6b46HCSy151Nu1xv49MM1q0pWOm
         u8siiaf4YNhdDrx9KbhU0KG9EMhTLUuME5sra+ciJWcJE84hcUezi2t2cDk+JEEg/7Db
         xY+IXpdtvn66aiKJDmbxk3erJxwy9pDOyKmctcw6oSQOpWCI8hiSRVv5o1NDKQCbdl+D
         CtQ6uPX1yrrbVJpKlolTdPThRG0XWj95v6EECa3t8cUWfk0p+Ysey7BBvCHj6uKniL7w
         EWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773239170; x=1773843970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        b=gj/hC0bpDucXlky31aja3uii+oQ3Ki8WmyVVOUsjN7EfmBxGs8iKYMHD1dFYkzHv4l
         ZzS4lR4kcquc+kqZXxtIRRYttmXttDq9YquMsZuTXMoly8kHwJyWpGbEJuYdHoStrWjs
         w0R2WXgOORvzO70yAlANRn6asnmo7ajKk09Pbvp2Bmadf+p/uNVPPrzQCoUTrJQjXwLt
         o+MRqvNip23uJSOj4pLwAthRz7+o63tUKav07QMXnbAde28T+LLHprZ+WYSEgOWi3KvT
         N4AFcxkYS0XBxAGh+OZkjhAPNtQoC8sLYDCJ97DaGrAbhySATPnjjYhVaDBMA77Sdd/J
         gKJg==
X-Forwarded-Encrypted: i=1; AJvYcCWbTf5MgRtRnxvg/AdTBlbbfTA0c+miwHgCP0UxO5NL5WJ8d61uUf+uDNlnPmcJ4aoiqD1rMWVPWx1LNSm3Lg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWUc9ePO+Jam55xdkmugDk01hcZt5YOZnHYqVjhjUexdO+/VFN
	na4+LGIPHqGRRot5nfArhAIZ4nNRUDXcOyYuDAp9p8y4J4sb9cVkHYX7j+tWbUsXIaOuWklFuET
	IpF65WNFw1YoelaHZCraNTpyNgu7pSk4=
X-Gm-Gg: ATEYQzwMIGx28ZAM9MvmPf4r5DDsEfTifasIC2SALRXUm/0Tt0199TzJljIM4LgHBub
	5nsl9K950nOAJ7kndeTcm/YrUBtufMATY8hS+iDZ/pJmuwOFlEKkszv2IC6ETM9B5L9Iy4+xkk9
	2YEALZoZJm0u8XZCgnn09yVOyzT48yiIzVzAnPnKaK945+ePOyx6TQiXBwzkC0o2uAlKiRjASew
	MDS8QsL/z2wz6i9Ro7pBGyQCyifBsuS+vUMTICP15iv4k3SccGGBMYRgugPkA5p3OYakVzP/BO7
	EQuX0zU=
X-Received: by 2002:a05:622a:1181:b0:509:1cf9:ea15 with SMTP id
 d75a77b69052e-5093a1ce568mr34244731cf.56.1773239170496; Wed, 11 Mar 2026
 07:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
 <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com> <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
In-Reply-To: <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 11 Mar 2026 18:25:58 +0400
X-Gm-Features: AaiRm521OUVT7JY43-r19xBDa8sAqMr83aUZi0b84YOkyBHEnTztidYE-1zQZhA
Message-ID: <CABjd4Yz3MKOp-gE8kNc4EOt3-a0mKZsxvbVYCN4KsbqTRDtWgA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Jimmy Hon <honyuenkwun@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Robinson <pbrobinson@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_072612_299377_B8C73259 
X-CRM114-Status: GOOD (  16.61  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgNToyOeKAr0FNIERlbm5pcyBHaWxtb3JlIDxkZW5uaXNA
YXVzaWwudXM+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgNzoyMOKAr1BNIEpp
bW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiA8c25pcD4KPiA+
ID4gKwo+ID4gPiArICAgICAgIHZjYzV2MF9vdGc6IHJlZ3VsYXRvci12Y2M1djAtb3RnIHsKPiA+
ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4g
KyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ID4gKyAgICAgICAgICAgICAg
IGdwaW9zID0gPCZncGlvMCBSS19QQzQgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArICAgICAgICAgICAgICAg
cGluY3RybC0wID0gPCZ2Y2M1djBfb3RnX2VuPjsKPiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1hbHdheXMtb247Cj4gPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsK
PiA+IHJlZ3VsYXRvci1hbHdheXMtb24gYW5kIHJlZ3VsYXRvci1ib290LW9uIGRvZXMgbm90IHNl
ZW0gcmlnaHQuCj4gPgo+ID4gV2h5IHdlcmUgdGhlc2UgYWRkZWQ/IFRoZSB2ZW5kb3IgZGlkIG5v
dCBoYXZlIHRoZW0uCj4gPiBodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51
eC1vcmFuZ2VwaS9ibG9iLzIzMmVkNGI5N2I2NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRiOWYzZjEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyNM
MjE2LUwyMjYKPiA+Cj4gPiBXYXMgdGhpcyBtaXN0YWtlbmx5IHRha2VuIGZyb20gdGhlIHJlZ3Vs
YXRvciB1c2IgMjAgd2hpY2ggaXMgcG93ZXJpbmcKPiA+IHRoZSBvbmJvYXJkIHVzYjIuMCBodWI/
Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51eC1vcmFuZ2VwaS9i
bG9iLzIzMmVkNGI5N2I2NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRiOWYzZjEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyNMMTExLUwxMTkKPgo+
IEl0IG1heSBoYXZlIGJlZW4gYSBtaXNzcmVhZGluZyBvZiB0aGUgc2NoZW1hdGljLCBidXQgaXQg
d2FzIGFkZGVkIHRvCj4gZ2V0IHBvd2VyIHRvIHRoZSBVU0IzIHBvcnQuIGJlZm9yZSBJIGFkZGVk
IGl0IGRldmljZXMgcGx1Z2dlZCBpbnRvIHRoZQo+IFVTQiAzIHBvcnQgd291bGQgbm90IHBvd2Vy
IG9uCgpIaSBEZW5uaXMsCgpUaGUgc2NoZW1hdGljIHNheXMgdGhhdCB0aGlzIHJlZ3VsYXRvciBz
dXBwbGllcyB0aGUgVkJVUyB2b2x0YWdlIGZvcgp0aGUgVVNCMyBwYXJ0IG9mIHlvdXIgVHlwZS1B
IE9URyBjb25uZWN0b3IuIElmIHlvdSBtYWtlIGl0IGFsd2F5cy1vbiwKeW91J2xsIGxpa2VseSBs
b3NlIHRoZSBwb3NzaWJpbGl0eSB0byB1c2UgdGhpcyBwb3J0IGluIGRldmljZSBtb2RlCih3aGlj
aCB5b3Ugd291bGQgbmVlZCBlLmcuIGZvciBmbGFzaGluZyBpbWFnZXMgb3ZlciBhIFVTQiBjYWJs
ZSBpbgpVLWJvb3Qgd2hpY2ggYWxzbyB0YWtlcyBkZXZpY2UgdHJlZSBzb3VyY2VzIGZyb20gTGlu
dXggdmlhCmRldmljZXRyZWUtcmViYXNpbmcpLgoKWW91IGFsc28gbGluayBpdCB1cCBhcyB0aGUg
UEhZIHN1cHBseSBvZiB0aGUgVVNCMiBjb250cm9sbGVyLCB3aGljaApkb2Vzbid0IGRlc2NyaWJl
IHRoZSBhY3R1YWwgaGFyZHdhcmUuCgpQbGVhc2Ugc2VlIGlmIHlvdSdkIHJhdGhlciBkZWZpbmUg
YSBjb25uZWN0b3Igbm9kZSBmb3IgeW91ciBUeXBlLUEKcG9ydCwgYW5kIGxpc3QgdGhpcyByZWd1
bGF0b3IgYXMgaXRzIFZCVVMgc3VwcGx5IGV4cGxpY2l0bHkuIEkndmUKcmVjZW50bHkgc3VibWl0
dGVkIGEgcGF0Y2ggWzFdIHRvIG1ha2UgdGhlICJvbmJvYXJkX3VzYl9kZXYiIGRyaXZlcgp0YWtl
IGNhcmUgb2YgZW5hYmxpbmcgVkJVUyBpbiBleGFjdGx5IHRoaXMgdHlwZSBvZiBzaXR1YXRpb25z
IChpdCdzIGluCnVzYi10ZXN0aW5nIG5vdyBhbmQgd2lsbCBob3BlZnVsbHkgaGl0IC1uZXh0IHNv
bWV0aW1lIHNvb24pLiBJZiB5b3UKbmVlZCBhbiBleGFtcGxlIGZvciBpdHMgdXNlLCBwbGVhc2Ug
cmVmZXIgdG8gWzJdLgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKClsxXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNjAyMTctdHlwZWEtdmJ1cy12MS0xLTY1N2I0ZTU1YTRjMkBmbGlwcGVy
Lm5ldC8KWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9mbGlwcGVyZGV2aWNlcy9mbGlwcGVyLWxpbnV4
LWtlcm5lbC9ibG9iLzJmODE0Y2RmMDdmNTBlOTAxZmMxYjEzMjgyMTNlNzY0NjA4NjRjMjAvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZmxpcHBlci1vbmUtcmV2LWYwYjBjMS5k
dHMjTDMwMy1MMzI4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
