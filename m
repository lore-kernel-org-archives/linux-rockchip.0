Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8374DC7619A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btuCtlcBedNfe4f09+LpIvxW4AjmNE1FQYZLMqNsGRE=; b=Zv83+qiEkPYEGd
	M0QhG9NDP+bOxDhGYgCcN0orZEdRPxOLJiCPwHl/TvI4m9wLPAOr/Alnh6FrLboTYoFZVG3roB79U
	aBwTew0pd7oEYpjindh21jNew7gtpHmayqBj/xOYPnjBHbO90CSfs5v2avWNeE/ngasPLNEH8QdbD
	wwCdasndiV01IBce9eEahbTT/5Woi6EWbOKpHo0Fsvd1pEQvGmUfDORQ2CdsZQOoO29D2YAHdwqoA
	FV1uYFl7eKW3+Um2KlPbyAjh//WjeyfUBwN+xzaTOT+JTCRlZ4vfVcFYoOL6rRPHKPTLtXNqHhASV
	1NvPNEMvO0EXWNKBRH6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdj6-003sRw-1f;
	Wed, 12 Apr 2023 16:53:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdj2-003sP2-2y
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Apr 2023 16:53:43 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20230412165334euoutp0295cc783a3c6038bfbd4ea5570c8a98cc~VPjCir16W2026420264euoutp02i
	for <linux-rockchip@lists.infradead.org>; Wed, 12 Apr 2023 16:53:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20230412165334euoutp0295cc783a3c6038bfbd4ea5570c8a98cc~VPjCir16W2026420264euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1681318414;
	bh=wZO6Dqp5dPJCNRWb5bvNZmABWpcQ9lZ9Lbxzm7Lw6Mg=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=C30NP/i6B4LSCFFElxa+dbjEeCx+ulslG4eLWi9JLlJ512e9VrLvLxt/wC2IBKkvR
	 6FXdbDk1IZ9gNhnNqLWxO405Ah+PTSqAJ+QiTpWpqbnYOsUUpj42ZdtoY64am4CgTA
	 sqleo+koxJGBXWjcNcCQvC/8cIWD7KjSqS886iMQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20230412165334eucas1p2774826fb6fff814016a2b94defb89e2a~VPjCQVe5w1111611116eucas1p2w;
	Wed, 12 Apr 2023 16:53:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 60.2D.09966.E02E6346; Wed, 12
	Apr 2023 17:53:34 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20230412165333eucas1p2109ca0d5e10efd132a04bbbe1b5c3d94~VPjB7uv-B1360113601eucas1p2E;
	Wed, 12 Apr 2023 16:53:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20230412165333eusmtrp2aca1d1ee844ff8e9932214de51f21860~VPjB7DZCG0393003930eusmtrp2O;
	Wed, 12 Apr 2023 16:53:33 +0000 (GMT)
X-AuditID: cbfec7f4-d39ff700000026ee-23-6436e20e22f4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 3F.0E.22108.D02E6346; Wed, 12
	Apr 2023 17:53:33 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20230412165332eusmtip20d390bf7742454c6e312aefbc76f6966~VPjBDW_Wq0161001610eusmtip2e;
	Wed, 12 Apr 2023 16:53:32 +0000 (GMT)
Message-ID: <69a90fd7-e76a-4257-8263-57d333b60dad@samsung.com>
Date: Wed, 12 Apr 2023 18:53:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.9.1
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk, robert.mader@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <a0a00172-ce86-dfa2-267d-b318a9c076dc@collabora.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKKsWRmVeSWpSXmKPExsWy7djP87p8j8xSDCZeZLfYcmU2s8XGF59Z
	LB5e9be4OPMui8Xmcz2sFqum7mSx2PT4GqtF16+VzBaXd81hs+jZsJXV4tOD/8wWyzb9YbLo
	XDGRzeLuvRMsFt/eLGa0+Lt9E4vFiy3iDoIef59fZ/HYcXcJo8fOWXfZPTat6mTz2Lyk3mPj
	ux1MHv1/DTy6jlxn8/i8Sc7j1NfP7AFcUVw2Kak5mWWpRfp2CVwZhxo+shb85quY+HIfWwPj
	ep4uRk4OCQETiV8df5m7GLk4hARWMEq8ut/GApIQEvjCKLHzRA1E4jOjxOIF+xhhOr7cPArV
	sZxRYuXWqWwQzkdGic7WbvYuRg4OXgE7iTu7IkFMFgFViXWXa0B6eQUEJU7OfAK2QFQgRWL3
	yafsILawQLrE/kPdTCA2s4C4xK0n85lARooInGWS6Lt/kAXEYRZYyCjxvGkDM0gVm4ChRNfb
	LjYQm1PAUeLV7KUsEN3yEs1bZ4NdJyFwiVPi/uZVUGe7SKz9+IwNwhaWeHV8CzuELSPxfyfE
	OgmBdkaJBb/vQzkTGCUant+C6raWuHPuFxvIP8wCmhLrd+lDhB0lvn1eCxaWEOCTuPFWEOII
	PolJ26YzQ4R5JTrahCCq1SRmHV8Ht/bghUvMExiVZiEFzCykAJiF5J1ZCHsXMLKsYhRPLS3O
	TU8tNspLLdcrTswtLs1L10vOz93ECEyJp/8d/7KDcfmrj3qHGJk4GA8xSnAwK4nw/nAxTRHi
	TUmsrEotyo8vKs1JLT7EKM3BoiTOq217MllIID2xJDU7NbUgtQgmy8TBKdXAtKQlPJZFv3bV
	PLbI1u3/e9xiVy0SeqIcVD3fYvPEPOtbip/9OnM+T5+210cr8xzPnl+sykHTsor+rUxJzDrf
	Wfp7TvJ2tnfajmXnQzYccV5irc/P98/k/+r6P+dc5PRE/r1Q/Gqy8vaMBdKuyxYWzJLmdKqK
	+qQoZrhl0zRGXa7Dq7qu/fHev4/jgMPmi7M1QpwuHTnbFCxh+Tg4oPrUmeNVWkGz+dkWPuLq
	eGr+VflRzpJVPNaMv5lnKxSvkV4gstBCgWPZFdHLP47uaKxUeH84g/uYcMvNOY7S2a/+vln6
	bYrFvL/115eIpK3x9t9+Xfymhu4iK6tMfWa1rOudN6wNM/ZM27RV5Zpdvf2Dl0osxRmJhlrM
	RcWJAAYppgf4AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsVy+t/xe7q8j8xSDNa+0bbYcmU2s8XGF59Z
	LB5e9be4OPMui8Xmcz2sFqum7mSx2PT4GqtF16+VzBaXd81hs+jZsJXV4tOD/8wWyzb9YbLo
	XDGRzeLuvRMsFt/eLGa0+Lt9E4vFiy3iDoIef59fZ/HYcXcJo8fOWXfZPTat6mTz2Lyk3mPj
	ux1MHv1/DTy6jlxn8/i8Sc7j1NfP7AFcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG
	5rFWRqZK+nY2Kak5mWWpRfp2CXoZhxo+shb85quY+HIfWwPjep4uRk4OCQETiS83jzKD2EIC
	Sxkltqwqg4jLSJyc1sAKYQtL/LnWxdbFyAVU855RYu6TqyxdjBwcvAJ2End2RYKYLAKqEusu
	14CU8woISpyc+YQFxBYVSJHYNWEpE4gtLJAusf9QN5jNLCAucevJfCaQkSICZ5kk9s8/zA7i
	MAssZJT4ufwrK8Syg0wS/y70gF3BJmAo0fUW5ApODk4BR4lXs5eyQIwyk+ja2sUIYctLNG+d
	zTyBUWgWkktmIdk4C0nLLCQtCxhZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgSmgG3Hfm7e
	wTjv1Ue9Q4xMHIyHGCU4mJVEeH+4mKYI8aYkVlalFuXHF5XmpBYfYjQFhsZEZinR5HxgEsor
	iTc0MzA1NDGzNDC1NDNWEuf1LOhIFBJITyxJzU5NLUgtgulj4uCUamA6fGaGIJPS2lkM36LW
	2N6IlGjXbih/cu/BkZmzT0dnMjj/M+VfEjjx6NZbx068Cz+qJli7mc363kKH2z0HT+lzs585
	+murco29kOjrxzW3YlpF5p7i/N9pc/7xxmL5RqPgw5kO2w7O6cnJzFsV1N9vOnf5hYnSt29+
	O/HqxX7zp1IcBrtKHt4I0ot8fLnB+Yd6cmRF1624Ex5rDoXazCsMuNB2skta4WxS3YIb+jzs
	zt+zRdM0NwZ+uut3STH54dNDEu1bmt/qCM+qCP8n9tizITvgHZvHm7yXhyuWbk8/LBnZmygt
	zyvM6puy1t9h0n7z2TKLvpuyGPzqmpk4t/oc59+jstvcTQonlAlVfuRUYinOSDTUYi4qTgQA
	dnKUTIoDAAA=
X-CMS-MailID: 20230412165333eucas1p2109ca0d5e10efd132a04bbbe1b5c3d94
X-Msg-Generator: CA
X-RootMTR: 20230412161415eucas1p1536b537c3f866e9820d3bea8bb9ea2d9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230412161415eucas1p1536b537c3f866e9820d3bea8bb9ea2d9
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
	<20230220104849.398203-2-benjamin.gaignard@collabora.com>
	<CGME20230412161415eucas1p1536b537c3f866e9820d3bea8bb9ea2d9@eucas1p1.samsung.com>
	<5fda9b2f-a339-8a23-dc7b-f1bac2c385b6@samsung.com>
	<a0a00172-ce86-dfa2-267d-b318a9c076dc@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_095341_227338_FE7CA823 
X-CRM114-Status: GOOD (  15.42  )
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

SGksCgpPbiAxMi4wNC4yMDIzIDE4OjQwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPgo+IExl
IDEyLzA0LzIwMjMgw6AgMTg6MTQsIE1hcmVrIFN6eXByb3dza2kgYSDDqWNyaXTCoDoKPj4gSGks
Cj4+Cj4+IE9uIDIwLjAyLjIwMjMgMTE6NDgsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4g
U2V0dGluZyBjb250ZXh0IHNvdXJjZSBhbmQgZGVzdGluYXRpb24gZm9ybWF0cyBzaG91bGQgb25s
eSBiZSBkb25lCj4+PiBpbiBoYW50cm9fc2V0X2ZtdF9vdXQoKSBhbmQgaGFudHJvX3NldF9mbXRf
Y2FwKCkgYWZ0ZXIgY2hlY2sgdGhhdAo+Pj4gdGhlIHRhcmdldGVkIHF1ZXVlIGlzIG5vdCBidXN5
Lgo+Pj4gUmVtb3ZlIHRoZXNlIGNhbGxzIGZyb20gaGFudHJvX3Jlc2V0X2VuY29kZWRfZm10KCkg
YW5kCj4+PiBoYW50cm9fcmVzZXRfcmF3X2ZtdCgpIHRvIGNsZWFuIHRoZSBkcml2ZXIuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNv
bGxhYm9yYS5jb20+Cj4+IFRoaXMgcGF0Y2ggbGFuZGVkIHJlY2VudGx5IGluIGxpbnV4LW5leHQg
YXMgY29tbWl0IGRiNmY2OGI1MWU1YyAoIm1lZGlhOgo+PiB2ZXJpc2lsaWNvbjogRG8gbm90IHNl
dCBjb250ZXh0IHNyYy9kc3QgZm9ybWF0cyBpbiByZXNldCBmdW5jdGlvbnMiKS4KPgo+IEhpLAo+
Cj4gSSBkbyBub3QgaGF2ZSB0aGlzIGJvYXJkIHVwIGFuZCBydW5uaW5nIHdpdGggSGFudHJvIGVu
Y29kZXIgYnV0Cj4gSSB0aGluayB0aGUgYXR0YWNoZWQgcGF0Y2ggbWF5IHNvbHZlIHRoZSBpc3N1
ZS4KPiBDb3VsZCB5b3UgdGVsbCBtZSBpZiBpdCB3b3JrcyA/CgpZZXAsIGl0IGZpeGVzIHRoZSBp
c3N1ZS4KClRlc3RlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tPgoKCkl0IGxvb2tzIHRoYXQgdGhlIGNvZGUgY291bGQgYmUgYSBiaXQgbW9yZSBjbGVhbmVk
IHVwLCBhcyB3aXRoIHRoZSAKYXR0YWNoZWQgcGF0Y2gsIHRoZXJlIGlzIHN1Y2ggY29uc3RydWN0
aW9uOgoKIMKgwqDCoCDCoMKgwqAgaWYgKGNvZGVkKSB7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGl4X21wLT5udW1fcGxhbmVzID0gMTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB2cHVfZm10ID0gZm10OwogwqDCoMKgwqDCoMKgwqAgfSBlbHNlIGlmIChjdHgtPmlz
X2VuY29kZXIpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2cHVfZm10ID0gZm10
OwogwqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB2cHVfZm10ID0gZm10OwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qCiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFdpZHRoL2hlaWdodCBvbiB0aGUgQ0FQVFVS
RSBlbmQgb2YgYSBkZWNvZGVyIGFyZSAKaWdub3JlZCBhbmQKIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogcmVwbGFjZWQgYnkgdGhlIE9VVFBVVCBvbmVzLgogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBw
aXhfbXAtPndpZHRoID0gY3R4LT5zcmNfZm10LndpZHRoOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHBpeF9tcC0+aGVpZ2h0ID0gY3R4LT5zcmNfZm10LmhlaWdodDsKIMKgwqDCoMKg
wqDCoMKgIH0KCkNvbW1vbiAndnB1X2ZtdCA9IGZtdCcgY2FuIGJlIG1vdmVkIG91dCBvZiB0aGUg
YWJvdmUgaWYtZWxzZSBibG9jay4KCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ks
IFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
