Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A3EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 17:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suVhiHNLqN3SIKf7U+8cXG8zpN9gZr4BD2cSfkBVJg8=; b=VIzuja4RTNN1Lc
	nw9sR9dZWlZcAo2+5pqLZRRuW6nkIbCBqvpkaK7HoEPYW8F6vejRHTE8+u1OOLZB0Q2ng9rsN372+
	hCVMdFesHcRN6YaxShdqfdhBYe7T4hXz7AyFgNFIH+Z/AAMaeojAGkjdSrHYOm3fctJ3oORNhlPOE
	tI1QP2LPNV5HEryvM3ks49Pf7sHXbtaVIir+r4Ahmgiqj792IRUv80511wniPsUgQwfakjj5ms3Of
	CBosEtkrNARipWv7RswiDtX5+q3DAPLSGolHF75E+CcHa6DRnIPubHAXlbyBlL7WN2Pxa25om9Mkq
	XuWVmW80kL94XKjnTvog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjPj-00DRFB-30; Mon, 28 Feb 2022 17:02:23 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjPT-00DR9m-H4
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 17:02:10 +0000
Received: by mail-qv1-xf33.google.com with SMTP id v18so13505231qvh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 09:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Y9cZVaut3aLdlKX+slS0PsytKlmPKaShOXQetxBEnLs=;
 b=RWahVHidsmUKk3zmU4u+GXNAQsPIO4fG+FWWtFLwh/nIJSVim2DRTMT+dtX8WkXnNw
 IhLL4C1HcJ9ZDzbcAYB1aCCOT3FAMdOlWQIR3BBfX/MfsCGxMk4tisEiRuqi6TuyNCSf
 fBYFIesGaDPEnn1TYpMJJTswWKjm+RtORcQOwTZFeT3QdpqpLHMeudiuIWfQsTYU0437
 Pi1+oFeFvCH2Diy8u1i22uQajV/YXRjXV3bwVdIFb+oScDEvFIPnjxKdB4/90MLk1imj
 iHRrkReVr4m6Z/SLB/qIhO18kTkqzsJx7zFvyvWA3udBE+sywy8GuIo2uGsBc3yBFJ0w
 4lMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Y9cZVaut3aLdlKX+slS0PsytKlmPKaShOXQetxBEnLs=;
 b=NPzEwdnfzFEWnHli/avxhtM/sEfgTjbLn/0ZXq4sBnISFln5revpumQTgEDD/tZQGT
 lESS+7xn++0Hea9VWsKrW1VRSS+YDldvf3xsvcOAf/pyfCl0zLB8BYY/KQVemox/F3qi
 ffj4ezeYy10CMSc1eJFyX4aYIzdqufPBvZfgA9N3e0X/RuZzYk2GYBFWXzRCWsr+Mg0Y
 m+FNO7lxqYQLVbtVlTkaJC9PIE67kT8BTvfkUvdhcoa/KAeSPUd6USTK+FTC+aRfBPSn
 rn5buDYpVUOhHWvwKW9fFI/R49DM252zOnp5Mj/1Uy7mPXR3NT6R/o2WsAGI7Fq+Ulpa
 xRJw==
X-Gm-Message-State: AOAM531d6uw0so1RrFp7K658blgKdH4aQNqvt47Co4HikbqTfELm6msr
 YczHt/H6+1cLCjz7gGU7qePyhwwTE+HXeqD7
X-Google-Smtp-Source: ABdhPJwnakSt4EAfE7IsVjU7wlxEV+JgWuYIQRAupe57mnq3QS7Jav+/osBrc1CyPEkT1Hqcy4qtRw==
X-Received: by 2002:ad4:5605:0:b0:432:e77e:8023 with SMTP id
 ca5-20020ad45605000000b00432e77e8023mr7904254qvb.8.1646067726011; 
 Mon, 28 Feb 2022 09:02:06 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 20-20020ac84e94000000b002de8f564305sm7506949qtp.1.2022.02.28.09.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 09:02:05 -0800 (PST)
Message-ID: <73f460d843cee2781c9d08cdc421f0fd64f9ccc7.camel@ndufresne.ca>
Subject: Re: Re: [RFC PATCH 2/8] media: Add P010 format
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org,  wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev
Date: Mon, 28 Feb 2022 12:02:04 -0500
In-Reply-To: <5696849.MhkbZ0Pkbq@kista>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-3-jernej.skrabec@gmail.com>
 <1b2ce01fb04f29cca58d40bd81d9f4cc46dcebf8.camel@ndufresne.ca>
 <5696849.MhkbZ0Pkbq@kista>
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090207_578175_88ACD503 
X-CRM114-Status: GOOD (  18.53  )
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

TGUgbHVuZGkgMjggZsOpdnJpZXIgMjAyMiDDoCAxNzozMiArMDEwMCwgSmVybmVqIMWga3JhYmVj
IGEgw6ljcml0wqA6Cj4gRG5lIHBvbmVkZWxqZWssIDI4LiBmZWJydWFyIDIwMjIgb2IgMTM6NDg6
NTMgQ0VUIGplIE5pY29sYXMgRHVmcmVzbmUgCj4gbmFwaXNhbChhKToKPiA+IExlIGRpbWFuY2hl
IDI3IGbDqXZyaWVyIDIwMjIgw6AgMTU6NDkgKzAxMDAsIEplcm5laiBTa3JhYmVjIGEgw6ljcml0
IDoKPiA+ID4gQWRkIFAwMTAgZm9ybWF0LCB3aGljaCBpcyBjb21tb25seSB1c2VkIGZvciAxMC1i
aXQgdmlkZW9zLgo+ID4gCj4gPiBUaGVyZSBpcyBhIG11Y2ggbW9yZSBjb21wbGV0ZSBwYXRjaCB0
aGF0IHdhcyBzZW50IHByZXZpb3VzbHkgKHdpdGggCj4gZG9jdW1lbnRhdGlvbgo+ID4gYW5kIGFs
bCk6Cj4gPiAKPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1y
b2NrY2hpcC9wYXRjaC8KPiAyMDIxMDYxODEzMTUyNi41NjY3NjItNS1iZW5qYW1pbi5nYWlnbmFy
ZEBjb2xsYWJvcmEuY29tLwo+IAo+IEdyZWF0LCBJJ2xsIHRha2UgaXQgZm9yIG5leHQgcmV2aXNp
b24uIEFsdGhvdWdoIEknbSBub3Qgc3VyZSB3aGF0ICJtdWNoIG1vcmUgCj4gY29tcGxldGUiIG1l
YW5zLiBPbmx5IGFkZGl0aW9uYWwgdGhpbmcgaXMgZG9jdW1lbnRhdGlvbi4KCldoZW4gYWRkaW5n
IHVBUEksIGRvYyBpcyByZWFsbHkgaW1wb3J0YW50LCBzbyBoYXZpbmcgdGhlIGZvcm1hdCBkb2N1
bWVudGVkIG1lYW5zCnRoZSBvdGhlciBwYXRjaCBpcyAibXVjaCBtb3JlIiByZWFkeSB0byBiZSBt
ZXJnZWQuCgpjaGVlcnMsCk5pY29sYXMKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+
ID4gCj4gPiByZWdhcmRzLAo+ID4gTmljb2xhcwo+ID4gCj4gPiA+IAo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgo+ID4gPiAtLS0K
PiA+ID4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmMgfCAyICsrCj4gPiA+
ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMgIHwgMSArCj4gPiA+ICBpbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgIHwgMSArCj4gPiA+ICAzIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmMgYi9kcml2ZXJzL21lZGlhL3Y0bDItCj4gY29y
ZS92NGwyLWNvbW1vbi5jCj4gPiA+IGluZGV4IDFkYjAwMjBlMDhjMC4uNGVkZTM2NTQ2ZTljIDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9uLmMKPiA+ID4gQEAg
LTI3NSw2ICsyNzUsOCBAQCBjb25zdCBzdHJ1Y3QgdjRsMl9mb3JtYXRfaW5mbyAqdjRsMl9mb3Jt
YXRfaW5mbyh1MzIgCj4gZm9ybWF0KQo+ID4gPiAgCQl7IC5mb3JtYXQgPSBWNEwyX1BJWF9GTVRf
WVVWNDIyUCwgLnBpeGVsX2VuYyA9IAo+IFY0TDJfUElYRUxfRU5DX1lVViwgLm1lbV9wbGFuZXMg
PSAxLCAuY29tcF9wbGFuZXMgPSAzLCAuYnBwID0geyAxLCAxLCAxLCAwIH0sIAo+IC5oZGl2ID0g
MiwgLnZkaXYgPSAxIH0sCj4gPiA+ICAJCXsgLmZvcm1hdCA9IFY0TDJfUElYX0ZNVF9HUkVZLCAg
ICAucGl4ZWxfZW5jID0gCj4gVjRMMl9QSVhFTF9FTkNfWVVWLCAubWVtX3BsYW5lcyA9IDEsIC5j
b21wX3BsYW5lcyA9IDEsIC5icHAgPSB7IDEsIDAsIDAsIDAgfSwgCj4gLmhkaXYgPSAxLCAudmRp
diA9IDEgfSwKPiA+ID4gIAo+ID4gPiArCQl7IC5mb3JtYXQgPSBWNEwyX1BJWF9GTVRfUDAxMCwg
ICAgLnBpeGVsX2VuYyA9IAo+IFY0TDJfUElYRUxfRU5DX1lVViwgLm1lbV9wbGFuZXMgPSAxLCAu
Y29tcF9wbGFuZXMgPSAyLCAuYnBwID0geyAyLCA0LCAwLCAwIH0sIAo+IC5oZGl2ID0gMiwgLnZk
aXYgPSAyIH0sCj4gPiA+ICsKPiA+ID4gIAkJLyogVGlsZWQgWVVWIGZvcm1hdHMgKi8KPiA+ID4g
IAkJeyAuZm9ybWF0ID0gVjRMMl9QSVhfRk1UX05WMTJfNEw0LCAucGl4ZWxfZW5jID0gCj4gVjRM
Ml9QSVhFTF9FTkNfWVVWLCAubWVtX3BsYW5lcyA9IDEsIC5jb21wX3BsYW5lcyA9IDIsIC5icHAg
PSB7IDEsIDIsIDAsIDAgfSwgCj4gLmhkaXYgPSAyLCAudmRpdiA9IDIgfSwKPiA+ID4gIAkJeyAu
Zm9ybWF0ID0gVjRMMl9QSVhfRk1UX1AwMTBfNEw0LCAucGl4ZWxfZW5jID0gCj4gVjRMMl9QSVhF
TF9FTkNfWVVWLCAubWVtX3BsYW5lcyA9IDEsIC5jb21wX3BsYW5lcyA9IDIsIC5icHAgPSB7IDIs
IDQsIDAsIDAgfSwgCj4gLmhkaXYgPSAyLCAudmRpdiA9IDIgfSwKPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyBiL2RyaXZlcnMvbWVkaWEvdjRs
Mi0KPiBjb3JlL3Y0bDItaW9jdGwuYwo+ID4gPiBpbmRleCAwNDhmMzI2YzU3YjkuLmE4ZDk5OWUy
M2U1YiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1pb2N0
bC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+ID4g
PiBAQCAtMTI5NSw2ICsxMjk1LDcgQEAgc3RhdGljIHZvaWQgdjRsX2ZpbGxfZm10ZGVzYyhzdHJ1
Y3QgdjRsMl9mbXRkZXNjIAo+ICpmbXQpCj4gPiA+ICAJY2FzZSBWNEwyX1BJWF9GTVRfTTQyMDoJ
CWRlc2NyID0gIllVViA0OjI6MCAKPiAoTTQyMCkiOyBicmVhazsKPiA+ID4gIAljYXNlIFY0TDJf
UElYX0ZNVF9OVjEyOgkJZGVzY3IgPSAiWS9DYkNyIDQ6MjowIjsgYnJlYWs7Cj4gPiA+ICAJY2Fz
ZSBWNEwyX1BJWF9GTVRfTlYyMToJCWRlc2NyID0gIlkvQ3JDYiA0OjI6MCI7IGJyZWFrOwo+ID4g
PiArCWNhc2UgVjRMMl9QSVhfRk1UX1AwMTA6CQlkZXNjciA9ICIxMC1iaXQgWS9DYkNyIDQ6Mjow
IjsgCj4gYnJlYWs7Cj4gPiA+ICAJY2FzZSBWNEwyX1BJWF9GTVRfTlYxNjoJCWRlc2NyID0gIlkv
Q2JDciA0OjI6MiI7IGJyZWFrOwo+ID4gPiAgCWNhc2UgVjRMMl9QSVhfRk1UX05WNjE6CQlkZXNj
ciA9ICJZL0NyQ2IgNDoyOjIiOyBicmVhazsKPiA+ID4gIAljYXNlIFY0TDJfUElYX0ZNVF9OVjI0
OgkJZGVzY3IgPSAiWS9DYkNyIDQ6NDo0IjsgYnJlYWs7Cj4gPiA+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvCj4gdmlkZW9k
ZXYyLmgKPiA+ID4gaW5kZXggNzcyZGJhZGQxYTI0Li4yMTFiYzExYTQ4Y2IgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+ID4gPiArKysgYi9pbmNsdWRl
L3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPiA+ID4gQEAgLTU5Nyw2ICs1OTcsNyBAQCBzdHJ1Y3Qg
djRsMl9waXhfZm9ybWF0IHsKPiA+ID4gIC8qIHR3byBwbGFuZXMgLS0gb25lIFksIG9uZSBDciAr
IENiIGludGVybGVhdmVkICAqLwo+ID4gPiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfTlYxMiAgICB2
NGwyX2ZvdXJjYygnTicsICdWJywgJzEnLCAnMicpIC8qIDEyICBZL0NiQ3IgCj4gNDoyOjAgICov
Cj4gPiA+ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9OVjIxICAgIHY0bDJfZm91cmNjKCdOJywgJ1Yn
LCAnMicsICcxJykgLyogMTIgIFkvQ3JDYiAKPiA0OjI6MCAgKi8KPiA+ID4gKyNkZWZpbmUgVjRM
Ml9QSVhfRk1UX1AwMTAgICAgdjRsMl9mb3VyY2MoJ1AnLCAnMCcsICcxJywgJzAnKSAvKiAyNCAg
WS9DYkNyIAo+IDQ6MjowIDEwLWJpdCAqLwo+ID4gPiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfTlYx
NiAgICB2NGwyX2ZvdXJjYygnTicsICdWJywgJzEnLCAnNicpIC8qIDE2ICBZL0NiQ3IgCj4gNDoy
OjIgICovCj4gPiA+ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9OVjYxICAgIHY0bDJfZm91cmNjKCdO
JywgJ1YnLCAnNicsICcxJykgLyogMTYgIFkvQ3JDYiAKPiA0OjI6MiAgKi8KPiA+ID4gICNkZWZp
bmUgVjRMMl9QSVhfRk1UX05WMjQgICAgdjRsMl9mb3VyY2MoJ04nLCAnVicsICcyJywgJzQnKSAv
KiAyNCAgWS9DYkNyIAo+IDQ6NDo0ICAqLwo+ID4gCj4gPiAKPiAKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
