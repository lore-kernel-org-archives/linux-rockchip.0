Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0AB4ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 05:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJv7aylQCxmdd6FXYGdBAQAckXKDAMu+q27qPI3zpDs=; b=wbO+u2Kr0CP3T+
	GVWMkXn8J1xiXwJ52GSyYFqgoNt3yY9NbeKUDACyNNPfRGp1x1QGDAWnJAHYExEPZzd9yNV3T1oJQ
	mZRqsUtvN7mj1QjWKp3AXC8dg4j1Ilh1QM9D0umT3wMihixPnCXPi5neQpD4f3qW6RfA2Y32GWI6W
	BPRTqABuCa5wSlt5up4QKiDHhDB4+YwIfbnoeAheKV85ZPFj54zdsNECw+thlHLlXiIRsMQ8KqXS4
	m7BTEu9dzF3E2eXRAf8u/dEYlD0OcG01j+MTyz7Yu9+uFOde/9Zsun92LywpiEzI/SW5Dzsz9xfl8
	bg1j2qymOkrBUbtXqTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSJU-00ERL1-MZ; Fri, 26 Aug 2022 05:55:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSJQ-00ERAG-8H
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 05:55:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20220826055515euoutp01d0ff21262f74e2782a2b5d865d1d57a2~Oz14cUJxC2304623046euoutp01g
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 05:55:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20220826055515euoutp01d0ff21262f74e2782a2b5d865d1d57a2~Oz14cUJxC2304623046euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1661493315;
	bh=4GR+Vs8QxIsviDnv/eHU0Cv9vVsxhNm7ixoKU4xAS80=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=Zf6hsL880TB1WiPYRRi0NPHFBgh6CyFJSCB5cLv+o8EOIOdy5e61qD4njuI8PqIUj
	 W6g2cYOr/wKxF87lgMhXvmJhQanEYFOjTliMDm7X+11DUuw7aZTu3iKCuhTnpIcH39
	 Qg0AZOTSLjZLVqWvW6zbJUvibRDRRHn2Xnx6hiaM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20220826055515eucas1p2e249e3f805b9bbfacb3312ec4bea94f4~Oz14CcxdO3203532035eucas1p2-;
	Fri, 26 Aug 2022 05:55:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 00.77.07817.34068036; Fri, 26
	Aug 2022 06:55:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20220826055514eucas1p10f990886cf7333dd48f11465b37104f2~Oz13opndR2865128651eucas1p1s;
	Fri, 26 Aug 2022 05:55:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220826055514eusmtrp1c40a980356df2f2b59ddcbd1b8ccabf9~Oz13nFY3n1173811738eusmtrp1i;
	Fri, 26 Aug 2022 05:55:14 +0000 (GMT)
X-AuditID: cbfec7f4-893ff70000011e89-06-63086043b9e6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 6E.A4.07473.24068036; Fri, 26
	Aug 2022 06:55:14 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220826055514eusmtip208eb058064faf5c98c6ef6ed80075a06~Oz12_HYdT2757327573eusmtip2H;
	Fri, 26 Aug 2022 05:55:14 +0000 (GMT)
Message-ID: <367f1076-0eec-85bd-577e-d9302e461d00@samsung.com>
Date: Fri, 26 Aug 2022 07:55:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
	Gecko/20100101 Thunderbird/91.12.0
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
Content-Language: en-US
To: =?UTF-8?Q?Christian_Kohlsch=c3=bctter?= <christian@kohlschutter.com>,
	broonie@kernel.org
Cc: heiko@sntech.de, lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
	m.reichl@fivetechno.de, robin.murphy@arm.com, vincent.legoll@gmail.com,
	wens@kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20220825212842.7176-1-christian@kohlschutter.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se1BMcRTH/e7dvd2Wa24rOvLIXOTZJq+5XnmbNcYMpiaTQTvbnYp2l91K
	DBOiIVopxPZaNIMmlqXHxh/tpt3JoxBpEkmNVLO0GCFZ7d7Qf99zzuc75zGHxMUWoS8Zo4zj
	1EpZLEOIBCXWH7UBKyNI+ayCWiF7tqWNYEst7QTrfNclZL89P4axxtZ6IVtXnkOw952nEPv5
	rRNnO+5/R6y5u03I2q6/J1hd7kti2TBpUV4RkjY2JUlNutceUmPhcUKakVmOSW8XJElL6/Nw
	6Rfj+A1kuGhxJBcbk8CpA4MjRNE5xXZ8l3lC4ukiA3EQ9Y1ORZ4k0HNBW/UTS0UiUkxfRdBl
	1wv54CsCU8YLzEWJ6S8I0pyBfx31Tz8iHrqCoLO3huADB4JGaybuoig6GNIPNXi4tICeDId/
	5GJ83guqL7QJXHokLYf3zstuZgS9FbJaygmXxmkfaGzLd/Pe9DYo672Euxrg9EkMrO12d4Gg
	gyDVnuo2eNJLofhVBcab/SC5ONttADrLEzpeO3B+7lXw6/wFxOsR0Gm748HrsfAw82T/RGS/
	VkHf+Tl8OhHqu4oGrIugqeYn4UJwehoYygcusRwaHjQPOIdDg92Ln2A4ZJRk4XyagmMpYp72
	B53txr+e5ifP8HTE6AYdRTdoed2gXXT/++qRoBD5cPEaRRSnma3k9kg0MoUmXhklkasURtT/
	Zg9/276WoSudDokFYSSyICBxxptaaBXIxVSkbO8+Tq3aro6P5TQWNIYUMD6UPOamTExHyeK4
	nRy3i1P/rWKkp+9BbE+l8qg5MHDK7ujHmtVU0sa+2UueKV7sn8hkaakTdfbwdduubazs0War
	ysLSLg4tmzWuVDU5H6/2M1X8DtLXdZ3ZnGadn0Me+GB89PTjvem+t7jrPX4hptGUNWWRT3Kh
	/6cdZ8I3GbwIm/cp7dDmsIIEbOobld4m0ZuStQ3tFaFTs7lzZ9cLQ9fbmf3Dwj26cw0BuQuO
	RFhMU0y9ce3yGkdI8IIV92Ycj7yY10F1s3OZLV496sX+5vkJa/c9QjM6qwJq/UW2d62KURl2
	PC1xJtO87O48hE1YU52zNX/745TWIYlEbciklrxRBU3NnGiz49IcSXaV4a66ZHzYvNg3laGM
	QBMtC5qOqzWyP1I/rDfVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBIsWRmVeSWpSXmKPExsVy+t/xe7pOCRzJBhtnalpMffiEzWL7oeds
	Fv8fvWa1+Halg8li0+NrrBaXd81hszjyv5/R4tOD/8wWL4/8YLQ4+OEJq8Xxtc/YLGbNvc7m
	wOOxZt4aRo9bd+o9ds66y+6xaVUnm8ekybuYPDYvqffYfm0es8fnTXIBHFF6NkX5pSWpChn5
	xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GXO2vmUuOKhQMXHNerYG
	xr+SXYycHBICJhLXLr5j7GLk4hASWMoocWzhXSaIhIzEyWkNrBC2sMSfa11sEEXvGSV2nPnF
	DpLgFbCTmNB4A8xmEVCVaPo5lwkiLihxcuYTFhBbVCBZYsGhpWC2sECsxPSHu9hAbGYBcYlb
	T+aD1YsIxEncvbYUbAGzQA+TxJQvR1ggtp1hlLh8bjYzSBWbgKFE19susG5OAXuJrbcPMEFM
	MpPo2trFCGHLSzRvnc08gVFoFpJDZiFZOAtJyywkLQsYWVYxiqSWFuem5xYb6hUn5haX5qXr
	JefnbmIERvG2Yz8372Cc9+qj3iFGJg7GQ4wSHMxKIrxWx1iShXhTEiurUovy44tKc1KLDzGa
	AkNjIrOUaHI+MI3klcQbmhmYGpqYWRqYWpoZK4nzehZ0JAoJpCeWpGanphakFsH0MXFwSjUw
	Kf0+mb82PVs6w7t0y+vJm4w7eNLZD+3O+XUm48ydggun3t2cJvDhMjer5Rm15KQXN4Wv1Csv
	VE69L9dguMhgnUH13r5FQgwyfhkT7Td8L9RUqjcKuObMczVIYkLnsbIfUR3Pf/u+9n+48S4j
	7xqV6YXqU8TZVp5V+beBY8/JiXbtDx7K9gXW3/lvfDPoqRlPXvGjslN/mfTiemstK1cdzT62
	/7/68aAvCX5/pZ4fabIvsOg4fDzg7NvG0o2Llu458Mwol+lLruys4tnuVj/KmyXP/GiKt1GZ
	H7z+/YnAicvmTnBflp1a9tWTUfzPdv/Vx7dO+irgzX6x/pXLh/tyd1cJ2eybzNB1J86t9NQM
	RyWW4oxEQy3mouJEAA3MeHxrAwAA
X-CMS-MailID: 20220826055514eucas1p10f990886cf7333dd48f11465b37104f2
X-Msg-Generator: CA
X-RootMTR: 20220825212905eucas1p139591652111adb8af44f30c0a2fbfe8e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20220825212905eucas1p139591652111adb8af44f30c0a2fbfe8e
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
	<CGME20220825212905eucas1p139591652111adb8af44f30c0a2fbfe8e@eucas1p1.samsung.com>
	<20220825212842.7176-1-christian@kohlschutter.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_225524_754680_D2AD0A16 
X-CRM114-Status: GOOD (  24.02  )
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

T24gMjUuMDguMjAyMiAyMzoyOCwgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgd3JvdGU6Cj4gUHJl
dmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJlZmVyZW5jZSB1cG9uIGNh
bGxpbmcKPiByZWd1bGF0b3JfcmVnaXN0ZXIgb24gYW4gYWx3YXlzLW9uIG9yIGJvb3Qtb24gcmVn
dWxhdG9yIGNhdXNlZAo+IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzIHRvIGJlIGNhbGxlZCB0d2lj
ZS4KPgo+IFRoaXMgaW4gdHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUgcmVndWxhdG9yIHR3aWNlLCBs
ZWFkaW5nIHRvIHZvbHRhZ2UKPiBnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBB
IHNpbXBsZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KPiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0
byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNlZCBieQo+IGNoYW5jZS4KPgo+
IE9uZSBzdWNoIGV4YW1wbGUgaXMgdGhlIFNELUNhcmQgdm9sdGFnZSByZWd1bGF0b3IgaW4gYSBO
YW5vUEkgUjRTIHRoYXQKPiB3b3VsZCBub3QgaW5pdGlhbGl6ZSByZWxpYWJseSB1bmxlc3MgdGhl
IHJlZ2lzdHJhdGlvbiBmbG93IHdhcyBqdXN0Cj4gY29tcGxleCBlbm91Z2ggdG8gYWxsb3cgdGhl
IHJlZ3VsYXRvciB0byBwcm9wZXJseSByZXNldCBiZXR3ZWVuIGNhbGxzLgo+Cj4gRml4IHRoaXMg
YnkgcmUtYXJyYW5naW5nIHJlZ3VsYXRvcl9yZWdpc3RlciwgdHJ5aW5nIHJlc29sdmUgdGhlCj4g
cmVndWxhdG9yJ3Mgc3VwcGx5IGVhcmx5IGVub3VnaCB0aGF0IHNldF9tYWNoaW5lX2NvbnN0cmFp
bnRzIGRvZXMgbm90Cj4gbmVlZCB0byBiZSBjYWxsZWQgdHdpY2UuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+CgpU
ZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KCj4g
LS0tCj4gICBkcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMgfCA1OCArKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygr
KSwgMjMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZWd1bGF0b3IvY29y
ZS5jIGIvZHJpdmVycy9yZWd1bGF0b3IvY29yZS5jCj4gaW5kZXggNzdmNjBlZWY5NjAuLjJmZjBh
YjI3MzBmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwo+ICsrKyBiL2Ry
aXZlcnMvcmVndWxhdG9yL2NvcmUuYwo+IEBAIC01MzkxLDYgKzUzOTEsNyBAQCByZWd1bGF0b3Jf
cmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9kZXNjICpyZWd1bGF0b3JfZGVzYywKPiAg
IAlib29sIGRhbmdsaW5nX29mX2dwaW9kID0gZmFsc2U7Cj4gICAJc3RydWN0IGRldmljZSAqZGV2
Owo+ICAgCWludCByZXQsIGk7Cj4gKwlib29sIHJlc29sdmVkX2Vhcmx5ID0gZmFsc2U7Cj4gICAK
PiAgIAlpZiAoY2ZnID09IE5VTEwpCj4gICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+IEBA
IC01NDk0LDI0ICs1NDk1LDEwIEBAIHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVn
dWxhdG9yX2Rlc2MgKnJlZ3VsYXRvcl9kZXNjLAo+ICAgCUJMT0NLSU5HX0lOSVRfTk9USUZJRVJf
SEVBRCgmcmRldi0+bm90aWZpZXIpOwo+ICAgCUlOSVRfREVMQVlFRF9XT1JLKCZyZGV2LT5kaXNh
YmxlX3dvcmssIHJlZ3VsYXRvcl9kaXNhYmxlX3dvcmspOwo+ICAgCj4gLQkvKiBwcmVmb3JtIGFu
eSByZWd1bGF0b3Igc3BlY2lmaWMgaW5pdCAqLwo+IC0JaWYgKGluaXRfZGF0YSAmJiBpbml0X2Rh
dGEtPnJlZ3VsYXRvcl9pbml0KSB7Cj4gLQkJcmV0ID0gaW5pdF9kYXRhLT5yZWd1bGF0b3JfaW5p
dChyZGV2LT5yZWdfZGF0YSk7Cj4gLQkJaWYgKHJldCA8IDApCj4gLQkJCWdvdG8gY2xlYW47Cj4g
LQl9Cj4gLQo+IC0JaWYgKGNvbmZpZy0+ZW5hX2dwaW9kKSB7Cj4gLQkJcmV0ID0gcmVndWxhdG9y
X2VuYV9ncGlvX3JlcXVlc3QocmRldiwgY29uZmlnKTsKPiAtCQlpZiAocmV0ICE9IDApIHsKPiAt
CQkJcmRldl9lcnIocmRldiwgIkZhaWxlZCB0byByZXF1ZXN0IGVuYWJsZSBHUElPOiAlcGVcbiIs
Cj4gLQkJCQkgRVJSX1BUUihyZXQpKTsKPiAtCQkJZ290byBjbGVhbjsKPiAtCQl9Cj4gLQkJLyog
VGhlIHJlZ3VsYXRvciBjb3JlIHRvb2sgb3ZlciB0aGUgR1BJTyBkZXNjcmlwdG9yICovCj4gLQkJ
ZGFuZ2xpbmdfY2ZnX2dwaW9kID0gZmFsc2U7Cj4gLQkJZGFuZ2xpbmdfb2ZfZ3Bpb2QgPSBmYWxz
ZTsKPiAtCX0KPiArCWlmIChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9y
KQo+ICsJCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9yOwo+
ICsJZWxzZSBpZiAocmVndWxhdG9yX2Rlc2MtPnN1cHBseV9uYW1lKQo+ICsJCXJkZXYtPnN1cHBs
eV9uYW1lID0gcmVndWxhdG9yX2Rlc2MtPnN1cHBseV9uYW1lOwo+ICAgCj4gICAJLyogcmVnaXN0
ZXIgd2l0aCBzeXNmcyAqLwo+ICAgCXJkZXYtPmRldi5jbGFzcyA9ICZyZWd1bGF0b3JfY2xhc3M7
Cj4gQEAgLTU1MzMsMTMgKzU1MjAsMzggQEAgcmVndWxhdG9yX3JlZ2lzdGVyKGNvbnN0IHN0cnVj
dCByZWd1bGF0b3JfZGVzYyAqcmVndWxhdG9yX2Rlc2MsCj4gICAJCWdvdG8gd2FzaDsKPiAgIAl9
Cj4gICAKPiAtCWlmIChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9yKQo+
IC0JCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9yOwo+IC0J
ZWxzZSBpZiAocmVndWxhdG9yX2Rlc2MtPnN1cHBseV9uYW1lKQo+IC0JCXJkZXYtPnN1cHBseV9u
YW1lID0gcmVndWxhdG9yX2Rlc2MtPnN1cHBseV9uYW1lOwo+ICsJaWYgKChyZGV2LT5zdXBwbHlf
bmFtZSAmJiAhcmRldi0+c3VwcGx5KSAmJgo+ICsJCShyZGV2LT5jb25zdHJhaW50cy0+YWx3YXlz
X29uIHx8Cj4gKwkJIHJkZXYtPmNvbnN0cmFpbnRzLT5ib290X29uKSkgewo+ICsJCXJldCA9IHJl
Z3VsYXRvcl9yZXNvbHZlX3N1cHBseShyZGV2KTsKPiArCQlpZiAocmV0ICE9IDApCj4gKwkJCXJk
ZXZfZGJnKHJkZXYsICJVbmFibGUgdG8gcmVzb2x2ZSBzdXBwbHkgZWFybHk6ICVwZVxuIiwKPiAr
CQkJCSBFUlJfUFRSKHJldCkpOwo+ICsKPiArCQlyZXNvbHZlZF9lYXJseSA9IHRydWU7Cj4gKwl9
Cj4gKwo+ICsJLyogcGVyZm9ybSBhbnkgcmVndWxhdG9yIHNwZWNpZmljIGluaXQgKi8KPiArCWlm
IChpbml0X2RhdGEgJiYgaW5pdF9kYXRhLT5yZWd1bGF0b3JfaW5pdCkgewo+ICsJCXJldCA9IGlu
aXRfZGF0YS0+cmVndWxhdG9yX2luaXQocmRldi0+cmVnX2RhdGEpOwo+ICsJCWlmIChyZXQgPCAw
KQo+ICsJCQlnb3RvIHdhc2g7Cj4gKwl9Cj4gKwo+ICsJaWYgKGNvbmZpZy0+ZW5hX2dwaW9kKSB7
Cj4gKwkJcmV0ID0gcmVndWxhdG9yX2VuYV9ncGlvX3JlcXVlc3QocmRldiwgY29uZmlnKTsKPiAr
CQlpZiAocmV0ICE9IDApIHsKPiArCQkJcmRldl9lcnIocmRldiwgIkZhaWxlZCB0byByZXF1ZXN0
IGVuYWJsZSBHUElPOiAlcGVcbiIsCj4gKwkJCQkJIEVSUl9QVFIocmV0KSk7Cj4gKwkJCWdvdG8g
d2FzaDsKPiArCQl9Cj4gKwkJLyogVGhlIHJlZ3VsYXRvciBjb3JlIHRvb2sgb3ZlciB0aGUgR1BJ
TyBkZXNjcmlwdG9yICovCj4gKwkJZGFuZ2xpbmdfY2ZnX2dwaW9kID0gZmFsc2U7Cj4gKwkJZGFu
Z2xpbmdfb2ZfZ3Bpb2QgPSBmYWxzZTsKPiArCX0KPiAgIAo+ICAgCXJldCA9IHNldF9tYWNoaW5l
X2NvbnN0cmFpbnRzKHJkZXYpOwo+IC0JaWYgKHJldCA9PSAtRVBST0JFX0RFRkVSKSB7Cj4gKwlp
ZiAocmV0ID09IC1FUFJPQkVfREVGRVIgJiYgIXJlc29sdmVkX2Vhcmx5KSB7Cj4gICAJCS8qIFJl
Z3VsYXRvciBtaWdodCBiZSBpbiBieXBhc3MgbW9kZSBhbmQgc28gbmVlZHMgaXRzIHN1cHBseQo+
ICAgCQkgKiB0byBzZXQgdGhlIGNvbnN0cmFpbnRzCj4gICAJCSAqLwoKQmVzdCByZWdhcmRzCi0t
IApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
