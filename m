Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83268C5B552
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVxm7jsWtAKlt8/Z4b36HBXrskmwM3eBD4NvKGjcb08=; b=ZiiP4F2kikJIyH
	xJ6EtCdzswvFiDD/yHyTWQKl3spLiIbvmeQw6NIZPY9xrW+g/b0i39d7ZKdLvvPNzCN/qbM7v5SG+
	I17LiQUI6cDQ+3m6Krk+uWNQSMrRA3/E3oA5UBVSKa46f8xq3snEtBTfErxNPEi353Xgje438h+el
	30RcfRTXDQ68jbbolbRhmZaw2E8Vq3jo4fFpjlJwOn85+naETVdRCyVD6Ip/vTvAgL3Z1/hrZL7Ss
	bjFv4WMLAJN5zA/QVnNeET2Xa1TKNe5/XDbrdtUVYUrP6mC7MSFhyzQHnV9fiaR+DFSnWn+9uy9UA
	7Em6N/M9MO/sdABK4u1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMi12-0000000CiAn-3gbO;
	Wed, 04 Jun 2025 06:54:24 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhzk-0000000Chu4-0jtJ;
	Wed, 04 Jun 2025 06:53:05 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4a5851764e1so5971471cf.2;
        Tue, 03 Jun 2025 23:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749019983; x=1749624783; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyVjPzyLcJPTQJH1h6UfkUu9+f/KgbX90KrYVoyGLHY=;
        b=QRT5QZeP42O4Ndgy9iOKL6dET0iv39HLUyuIUAzTHvjukhOaxYzRiLhEeZlE2/L77M
         4kK5CHlQsmK6mqi9Glx0qfK3zzsi4RK1waqcXJzhc9k6JiEzqhAjqB4Q0nMX6/a58TXK
         IlRM3eegSrBhbyChzEGfo8kW4CmKuCBDkcKVjywwE2txfvB1bGkN0zAV/+7a13McYOne
         h2zW4iUSYbpZrAgHOgZecOU1LeSfRGMHXXd+CjD8a9ROedjplz0jt0eSluXlVNFrvR2X
         AGgJaanpF0AATh1lMy7jy686HsJ1tzSQyPDurggs/Kwa+TichIvrSPPOlielrqT8uNfU
         md7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749019983; x=1749624783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MyVjPzyLcJPTQJH1h6UfkUu9+f/KgbX90KrYVoyGLHY=;
        b=cOVjjfvfILSt8lPbDse70hGMBD9BeAHoDeSPoDA2fqHfvkSRVJyfQL41Y2JAMyaSUE
         nDl0Ii859v5nml9J6uTEL+/DIZwUmE6iS4sty/gXOKLfyey+Bty4GywT19fJvI/lGBct
         NMJ/y0TcxE1b1/yZ/7zLMrD8BsVxAIS9W4ejHDrG6DQvhEgN6uGJRTMtKu/1NsQTMJEa
         xQIE8kow/gH9ouM4hKwHVxhdVEKSqAJaCsQn5YafHp2HVOio6/HlbLc6hAlkrILGI9BJ
         qrEFL90qKOle8J9kADPHQ9qOtEQsHaBfqciSl2RF+LzWIZp9QwV3uXpDd7S+WPcDpU1E
         FTMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUd6dAHh+dROHiVSmz1Kkz2tnD74mHGj+nN6cILbWQIIX76g98Z0V5byNqQG/Agkc5tsNXVF2VyBQzro8/OmC4=@lists.infradead.org, AJvYcCVE3+jebpjoCZ/7ihxvKAUZTF2K+YDNJSGe1+TdUPxL3UWn+eDUXvSnu9ROfxMqeRNIpTwftD6cxFcQoCXxqCGq@lists.infradead.org
X-Gm-Message-State: AOJu0YyWmlEYjKDh5/VP29hic5NBRIRjzz7OI1/jmVBRUxr7+cYfq1YP
	QDizP6fjjBe1shhHf/i7hdwN9cdIpsiccDNv2dc808vnCzpnMXD+ETCXF8jH077yC1+xyD9n0PR
	WaDqGdfI8GHna2GO0zp6o4r2+1WMVXcY=
X-Gm-Gg: ASbGncuwFEkL897tepTbLt+R3IzEUODbF1iaS/2IXCru4yskMfZPeC6fkaq7t+S66jX
	UZfB0OHFZ+6BO4TiVJgaxauDfE6KpMVq+ipeNVm5XGaIFEJUFrWaQEDpSlCihknM9OcCIvO0KqK
	x2TMoqZk8IUNQ1Pz2eiG/qpSfXUAsV2vg=
X-Google-Smtp-Source: AGHT+IF7dEVyEdH+C/HunhhJcZxvr/1H6/oLSYayWQ8oFVL13uluh9+PHp86HTOwmJ9nRQzKHedGjPMItad1gxDjveE=
X-Received: by 2002:a05:622a:4d94:b0:4a5:8b39:626b with SMTP id
 d75a77b69052e-4a5a57bbda3mr28729721cf.27.1749019982787; Tue, 03 Jun 2025
 23:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-2-717e8ce4ab77@gmail.com> <5590100.Sb9uPGUboI@workhorse>
In-Reply-To: <5590100.Sb9uPGUboI@workhorse>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 4 Jun 2025 10:52:51 +0400
X-Gm-Features: AX0GCFvSCwxOtW_Sjp_6g6sDf5cAGfQNHG5Np4jna6_VvTZF7K2r6CnfR_dIWK0
Message-ID: <CABjd4YwtbMTT1W1rEdZzZ=KC3_EXXYKQBsTMiH5mPXPhgvQ=Lw@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: enable USB A ports on ArmSoM Sige5
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_235304_212645_22A40D9E 
X-CRM114-Status: GOOD (  16.32  )
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

T24gVHVlLCBKdW4gMywgMjAyNSBhdCA5OjUx4oCvUE0gTmljb2xhcyBGcmF0dGFyb2xpCjxuaWNv
bGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWVzZGF5LCAzIEp1
bmUgMjAyNSAxOTowMToxNCBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIEFsZXhleSBDaGFy
a292IHdyb3RlOgo+ID4gRW5hYmxlIHRoZSB0d28gVVNCIHR5cGUgQSBwb3J0cyAoVVNCMiBhbmQg
VVNCMykgcHJlc2VudCBvbiB0aGUgQXJtU29NCj4gPiBTaWdlNSBib2FyZC4KPiA+Cj4gPiBCb3Ro
IHBvcnRzIHVzZSBqdXN0IG9uZSB4SENJIGNvbnRyb2xsZXIsIHdpdGggdGhlIFVTQiAyLjAgc2ln
bmFscyBmZWQKPiA+IG9mZiB0aGUgc2FtZSBVU0IgT1RHIFBIWSB0aHJvdWdoIGFuIG9uYm9hcmQg
aHViLiBWQlVTIG9mIGJvdGggcG9ydHMgaXMKPiA+IGNvbnRyb2xsZWQgYnkgdGhlIHNhbWUgR1BJ
TyByZWd1bGF0b3IgKFZDQ19VU0JIT1NUIGluIHRoZSBzY2hlbWF0aWNzLAo+ID4gdG9nZ2xlZCBi
eSBHUElPNCBSS19QQTYpLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxh
bGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1
NzYtYXJtc29tLXNpZ2U1LmR0cyAgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCj4gPgo+Cj4gVGhpcyBpcyBhbHJlYWR5
IGRvbmUgaGVyZToKPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIw
MjUwNTA3LXJrMzU3Ni1zaWdlNS11c2ItdjMtNC04OWJmNWE2MTRjY2ZAY29sbGFib3JhLmNvbS8K
Ck9oIGNvb2whIFNvcnJ5IEkgbWlzc2VkIHRoYXQgb25lLiBZb3VyIHNlcmllcyBpcyBtdWNoIG1v
cmUKY29tcHJlaGVuc2l2ZSwgc28gdGhpcyBwYXRjaCBvZiBtaW5lIGNhbiBiZSBkcm9wcGVkLiBU
aGFua3MgZm9yIHlvdXIKd29yayEKCldvdWxkIHlvdSBtaW5kIGNoaW1pbmcgaW4gb24gdGhlIG90
aGVyIHBhdGNoZXMgaGVyZSwgZ2l2ZW4geW91cgprbm93bGVkZ2Ugb2YgdGhlIGhhcmR3YXJlPwoK
QnkgdGhlIHdheSwgeW91IGd1eXMgZG9uJ3Qgc2VlbSB0byBjYXJyeSB0aG9zZSBwYXRjaGVzIG9m
IHlvdXJzIGluIHRoZQpDb2xsYWJvcmEgdHJlZSBbMV0/IE5vciB0aGUgVFNBREMgdXBkYXRlcyBh
cyBmYXIgYXMgSSBjYW4gdGVsbC4KClsxXSBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hh
cmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2Jsb2Ivcm9ja2NoaXAtcmVs
ZWFzZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRz
P3JlZl90eXBlPWhlYWRzCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
