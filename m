Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E577C531C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 15:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gJ0zxmafo279MBymaOW1GDhYP/EsGMGMwgFRyZA5tM=; b=Nt6sRsvOGOb8Gc
	AJzd42f8NCafANKCAcT8YTz+NweMSDGiFNGJ0egu0nZ1zdA51IhvKxwwfhlwpz7cCAdmgkZumgqTO
	DdYLlFwMmFZOsZY4zkV78UaZafPuc43h/DNEml8yk0K52a6ai8mwBw+MjJYy0BafA2pprgKF+aXmA
	x55AEVaoQHRJP1yMio3vJXuPpoBRhPf8s3jLPtKMA6eCV1WOXHKeAouEjCJ5E+6VFse58MvpHASQ8
	Wf/AWiaZztcfWl8WA9ctLFlX2xWXH4WkdLJz4PkvAHvkdg7sHsSbU2c2PrwNQW7kr35U4Dib2j1RO
	t6i4xYGbal9MUTlWC48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnHmN-0000000GhRV-3FG8;
	Fri, 24 Jul 2026 15:25:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnHmL-0000000GhQf-1bIP
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 15:25:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66ODbOow2710433
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 15:25:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KPCrpQ0VJGnkL8TeDiCE7B+2L9MbbS21BzEsGKWPP/I=; b=MAa0q0GAaRVPzYQf
	YGCgntqUuQsm3Txj5s0FjQeqY356BJS/s2mwbtwwlkNDO9UmVSeYArhsvi445ztB
	3FpAFO5jz66XNmL2q1h1ldc+7pIEl/yGOuYCWsSqU33JfuQxmnG2P1lUWEY6aPoL
	M1DXl7dkQ8rxsjIu2pzMZkhubPLUYVRIMzZdlvE23Ivkaj+szb+gQl0xxTT+SZL1
	t7xTYFhisO7RfSY4pMV1DCnc5zf3h8URctquQbwTC4+EHaYt2T6FMLCtKocQk0HM
	d5KvcoBKaTkR6FRYvfat7L9lM5WoVJ6sQpgW+AqUY6ZII1rjFaJGQxA+eyuJZflp
	SK/plA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fm8cggk2e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 15:25:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8f000e221d7so8183106d6.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 08:25:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784906736; cv=none;
        d=google.com; s=arc-20260327;
        b=kjNAotpgsi+6n4bj48DVyGgXDhJGYsI2xHwLAPj5SjK/fPlRYwXN3cdk3MWkJcxq4o
         fPaBcyCznr8f6atQdVrx/HkQD9Qet6EqLFVKOkbhs1fd+yM5JyRQQq8GFahkKTqVaYGb
         DmZwM5Zp9MJw8BtcD4JdCMHljyoQhnNa95sW5SaZG7gAOuk/Nr2blGYNkURwiAH03rQP
         hyUf8WnPf/8jggFcoY7TtfVvIMR1lDPtrmwijoRJgiR6Gam/0pcYZVf0yAKsgRH7SrJE
         AutASvf4VjlGS5jc6q/HaGfNx0EglvzIm5DMjWdd+CNnJCy1GK+d4/gGZqGG/iwPr4sO
         CZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KPCrpQ0VJGnkL8TeDiCE7B+2L9MbbS21BzEsGKWPP/I=;
        fh=vIhyd2bNw3TBkd9rofWCMXgHV2ullZcHlZ9bAAsiGYM=;
        b=oyg1bJVbQ+kGKwejILklqdeDGP8hjs/OxpqowRRBcJT9s17Jv9Llx9TfYZXI2F7T+Y
         c4GXhQzanVPhwaWpKz9NanqDwz37og79Z+spBPcFOCXbkPQJGuKv8KWroIOVHcFSBWnS
         ypxsMZ/mO6CsI19wpk5giw7WFMIn6JZ21jgeD1I5OuVA5odxsiAUX9mm/tx7YXEXsExv
         DFNEXFWpg7tk0dRbkDdPm+H7i98AJ6gkzwUGAXY4BOcQ+wRSEUucuej2ad155HIGpFxV
         SQX4erfm91SCVLSNdEP9TybWQ0sMrcWUlVAN3WqSaFLmKbsM4exrus+wwlCra0i371l3
         xAYg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784906736; x=1785511536; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KPCrpQ0VJGnkL8TeDiCE7B+2L9MbbS21BzEsGKWPP/I=;
        b=EJcFEWyRcTNDo2tojeN9M4s5XlKdRsTZWUqMZU6s1/PjWIZRp8fJfs4wXkT+EOI642
         YAq55HlM0BkLzm1Gwz5oCg1Xy5YdxIyclr5pnQ/5fQ8bW7ebiyf/NqYnrok1j80JwJNy
         d8c798pXYSS/2dYS0uY4dVdvyoFFXt3eRqqrMi5jeLyX99/++rxFvScT2R5PygfvWti3
         hPlaKzsuZnyqxVB4tWPU876OYACS7RlCF1Nb8CAPaIr5EiqGyTh8gpug73YQZzQjV5D3
         v5JjlvmUpC7goXdzAMdw+IOYRc0jEXJv1QfrWWpAtIWj7C/k/BRMCN8VkDFcaUeIbiZn
         HLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784906736; x=1785511536;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KPCrpQ0VJGnkL8TeDiCE7B+2L9MbbS21BzEsGKWPP/I=;
        b=swfZLplAvak6gAqOr77fhgpio/AeV8/PktE58Szdz3OE0c6Erml6bBa/3cz+COUi+9
         W1OxuxdTMx6ks0jyGy55wPDIl5BQ7F//NewtOUKjZawnYp7V0GVnMA+cxlhqMF0Oe4iN
         rfBtSgDyrI0tzSeIGh/+I37167s3epPH4DFdCSEcN4HSCe9qSC9NSK2CZlgFgWxL+e8Y
         ld4aUeLltYQTaOe+UojvHsxcgIhXWCBzl+DNDBb1mXB5yk0gd3r9UkW6bduVxDLwq1l1
         Oz1wz/ib0X7wjvG5qoYkwkb3kCJkIHxp39eZpT1eJO0plyge/I4y9MDOJ8c9ZqJucLIB
         dGYw==
X-Forwarded-Encrypted: i=1; AHgh+RonEIm5YkQ/+GXx9TXYNVTnA1INJ/drnzJJK8oUJVAXaPPbwPFdZN60hPGk6EzfJM+Fo5sWVbjzHMUkvCvQXw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7GHoXt4MldIOjlxt0CYz0Xxo6jQD4oMqous1si/09QA1itj5t
	QexmNjwWf3r786v0NF2tqkRecZVfWvWu5ps/6iOCETpPg1ynHR3gfzWheBhGIG821ZJZoIuWpI6
	0r6Jyhn0HAx77/YyOC/CbHC+39X0+KWrijXaPK7FP8N+xrSaCgZZBsmy1ilfN8G2sZlVeLK3Gsj
	CASppM+DIUcJ4MiLj+uaSsFW3yzUzmElBUaHlBKjt9bYlN9k+swQ==
X-Gm-Gg: AR+sD13BGb9RBsB5TMR6JPVa5nYIRgaaWAWmrAT/x0TINpDsOjintUvxSnYDkkPFgaF
	hnZ+/3ZAUIohFWdC7hd1zMVQln4x/pFy/dICYmiH5S3i+8NgPmW1nyckX2WY4GFZ3WvNgP4Bbmr
	fwg2eoCQorEcVXxdnyTjNrEkE/46Jmz9Tee5/sks8S/B5wOtfMvxHA42UPzw==
X-Received: by 2002:a05:620a:3909:b0:930:ea41:771e with SMTP id af79cd13be357-93103852b6fmr821824785a.31.1784906735913;
        Fri, 24 Jul 2026 08:25:35 -0700 (PDT)
X-Received: by 2002:a05:620a:3909:b0:930:ea41:771e with SMTP id
 af79cd13be357-93103852b6fmr821818185a.31.1784906735245; Fri, 24 Jul 2026
 08:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260708234614.499613-1-midgy971@gmail.com>
In-Reply-To: <20260708234614.499613-1-midgy971@gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 17:25:23 +0200
X-Gm-Features: AUfX_mwrYV4f6v5r_1WLYjP_DJ5j8CdxwNSs9NXFS9k9uGsEaGAAKztNtVNILsQ
Message-ID: <CAPx+jO8vL4Ne14r+bR3De7riiNVRJK8Djm=b+jTsOscUynHwAA@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: Add a regulator to the RK3568 NPU
 power domain
To: MidG971 <midgy971@gmail.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Finley Xiao <finley.xiao@rock-chips.com>, linux-pm@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=JOMLdcKb c=1 sm=1 tr=0 ts=6a6383f0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=s8YR1HE3AAAA:8
 a=ghsCoqtGgTSC4U4bjT4A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: yQWqpX9ht6RoGg5UPyQAVpehbR0Jr5ny
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDEzOCBTYWx0ZWRfXxBOAHdGiwQAo
 WE3nzWbm9JY26OR9kFEjrD00//BcNeVNmN5YaHXuOguw4boi3aj+E7YCVki5C65nfetOTmI6jIh
 Yc4fdWtU6dmfXciisox2V6+hHrP0WsE=
X-Proofpoint-GUID: yQWqpX9ht6RoGg5UPyQAVpehbR0Jr5ny
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDEzOCBTYWx0ZWRfX00tK3G4XGTyP
 rO0uD7hB3nByU2gVK0DWKJjD34FKo07RXSzuLK04+8iMsSy1xWWQxRjfNE/Kev1a908bEAA7gHg
 dkhDvxdtdr816lGNZ/6GWxzwJf3FxAtX+WGmNDfSuXZQd6VLqG3eDpxtGiTe3XKT/4qvY/9NsjY
 irhq1Os5CsJF9Jkj5DMu1gzs/MRBNwDNTgRx9wbXWr26K7qvUCwPWN+ixi7QoCLu6HfQMuxdDqS
 1I1LnWFwRJMETuyUoJVkwGgtFKLULg5y0eqmNkJqls6lWcbcDM/E74QX+31DRgRnRl0VyTaQpV0
 dnCbVh1cOoB/zLPUMIbZ0UNvHxsfftvJArdZK+7kwzfm0ZllKHUYrklEJWqe1FCbUk930po+YGL
 mruMfJh2mnyLcMf85VGt6/HPYsSW5vla13pDxb6/2WaScHjBq+Wrd3AmMyqgGSkHkcN3g2QQjnw
 t/5fjL+fmfVUVKuHhoQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_03,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607240138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_082537_427088_316F9789 
X-CRM114-Status: GOOD (  24.94  )
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

T24gVGh1LCBKdWwgOSwgMjAyNiBhdCAxOjQz4oCvQU0gTWlkRzk3MSA8bWlkZ3k5NzFAZ21haWwu
Y29tPiB3cm90ZToKPgo+IEZyb206IE1pZGd5IEJBTE9OIDxtaWRneTk3MUBnbWFpbC5jb20+Cj4K
PiBUaGUgUkszNTY4IE5QVSByYWlsICh2ZGRfbnB1KSBuZWVkcyB0byBiZSBlbmFibGVkIGJlZm9y
ZSB0aGUgZG9tYWluIGlzCj4gcG93ZXJlZCBvbiBhbmQgZGlzYWJsZWQgYWZ0ZXIgaXQgaXMgcG93
ZXJlZCBvZmYuIEdpdmUgRE9NQUlOX1JLMzU2OCBhCj4gcmVndWxhdG9yIHBhcmFtZXRlciAobGlr
ZSBET01BSU5fUkszNTg4IGFscmVhZHkgaGFzKSBzbyB0aGUgTlBVIGRvbWFpbgo+IGNhbiBzZXQg
bmVlZF9yZWd1bGF0b3IsIGxldHRpbmcgZ2VucGQgbWFuYWdlIHRoZSByYWlsIHdpcmVkIHVwIGFz
IHRoZQo+IGRvbWFpbidzIGRvbWFpbi1zdXBwbHkgaW5zdGVhZCBvZiBtYXJraW5nIGl0IGFsd2F5
cy1vbiBpbiBEVC4KPgo+IFN1Z2dlc3RlZC1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJv
Y2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pZGd5IEJBTE9OIDxtaWRneTk3MUBnbWFp
bC5jb20+CgpBcHBsaWVkIGZvciBuZXh0LCB0aGFua3MhCgpLaW5kIHJlZ2FyZHMKVWZmZQoKCj4g
LS0tCj4gVGhpcyBwYXRjaCB3YXMgcGFydCBvZiB0aGUgUkZDIE5QVSBzZXJpZXMgWzFdOyBVbGYg
SGFuc3NvbiBhbmQgSGVpa28KPiBTdMO8Ym5lciByZXZpZXdlZCBpdCB0aGVyZSBhbmQgY29uZmly
bWVkIGl0IGNhbiBiZSBhcHBsaWVkIGluZGVwZW5kZW50bHkgb2YKPiB0aGUgcmVzdCBvZiB0aGUg
KHN0aWxsLVJGQykgcm9ja2V0IGRyaXZlciBhbmQgRFQgcGF0Y2hlcywgc28gaXQgaXMgcmVwb3N0
ZWQKPiBzdGFuZGFsb25lLiBUaGUgTlBVIGRvbWFpbidzIGRvbWFpbi1zdXBwbHkgRFQgd2lyaW5n
IGZvbGxvd3MgaW4gYSBzZXBhcmF0ZQo+IHBhdGNoLCBzbyB0aGlzIGNoYW5nZSBhbG9uZSBpcyBh
IG5vLW9wIGF0IHJ1bnRpbWUuCj4KPiBDaGFuZ2VzIHNpbmNlIHRoZSBSRkMgcG9zdGluZzoKPiAt
IE1vdmUgRE9NQUlOX01fUiBiZWxvdyB0aGUgb3RoZXIgRE9NQUlOX01fKiBtYWNyb3Mgc28gdGhl
eSBzdGF5Cj4gICBhbHBoYWJldGljYWxseSBzb3J0ZWQgKEhlaWtvIFN0w7xibmVyKS4KPgo+IFsx
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDYxMzA3MDExNi40
Mzg5MDYtMS1taWRneTk3MUBnbWFpbC5jb20vCj4KPiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hp
cC9wbS1kb21haW5zLmMgfCAzNiArKysrKysrKysrKysrKysrKystLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9t
YWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IDQ5MGJiYjFkMWQ4ZTguLmJhNjZhZTcx
OTQyODkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5z
LmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC0y
MDQsNiArMjA0LDIwIEBAIHN0cnVjdCByb2NrY2hpcF9wbXUgewo+ICAgICAgICAgLmFjdGl2ZV93
YWtldXAgPSB3YWtldXAsICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICB9Cj4KPiArI2RlZmlu
ZSBET01BSU5fTV9SKF9uYW1lLCBwd3IsIHN0YXR1cywgcmVxLCBpZGxlLCBhY2ssIHdha2V1cCwg
cmVndWxhdG9yKSAgICAgIFwKPiAreyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5uYW1lID0gX25hbWUsICAgICAgICAgICAg
ICAgICAgICAgICAgICBcCj4gKyAgICAgICAucHdyX3dfbWFzayA9IChwd3IpIDw8IDE2LCAgICAg
ICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAucHdyX21hc2sgPSAocHdyKSwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAuc3RhdHVzX21hc2sgPSAoc3RhdHVzKSwg
ICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAucmVxX3dfbWFzayA9IChyZXEpIDw8
IDE2LCAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAucmVxX21hc2sgPSAocmVxKSwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAuaWRsZV9tYXNrID0gKGlk
bGUpLCAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAuYWNrX21hc2sgPSAo
YWNrKSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAuYWN0aXZlX3dh
a2V1cCA9IHdha2V1cCwgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICAgICAubmVlZF9y
ZWd1bGF0b3IgPSByZWd1bGF0b3IsICAgICAgICAgICAgICAgICAgICBcCj4gK30KPiArCj4gICNk
ZWZpbmUgRE9NQUlOX1JLMzAzNihfbmFtZSwgcmVxLCBhY2ssIGlkbGUsIHdha2V1cCkgICAgICAg
ICAgIFwKPiAgeyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFwKPiAgICAgICAgIC5uYW1lID0gX25hbWUsICAgICAgICAgICAgICAgICAgICAgICAg
ICBcCj4gQEAgLTI0MSw4ICsyNTUsOCBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcG11IHsKPiAgI2RlZmlu
ZSBET01BSU5fUkszNTYyKG5hbWUsIHB3ciwgcmVxLCBnX21hc2ssIG1lbSwgd2FrZXVwKSAgICAg
ICAgICAgICBcCj4gICAgICAgICBET01BSU5fTV9HX1NEKG5hbWUsIHB3ciwgcHdyLCByZXEsIHJl
cSwgcmVxLCBnX21hc2ssIG1lbSwgd2FrZXVwLCBmYWxzZSkKPgo+IC0jZGVmaW5lIERPTUFJTl9S
SzM1NjgobmFtZSwgcHdyLCByZXEsIHdha2V1cCkgICAgICAgICAgXAo+IC0gICAgICAgRE9NQUlO
X00obmFtZSwgcHdyLCBwd3IsIHJlcSwgcmVxLCByZXEsIHdha2V1cCkKPiArI2RlZmluZSBET01B
SU5fUkszNTY4KG5hbWUsIHB3ciwgcmVxLCB3YWtldXAsIHJlZ3VsYXRvcikgICAgICAgICAgICAg
ICBcCj4gKyAgICAgICBET01BSU5fTV9SKG5hbWUsIHB3ciwgcHdyLCByZXEsIHJlcSwgcmVxLCB3
YWtldXAsIHJlZ3VsYXRvcikKPgo+ICAjZGVmaW5lIERPTUFJTl9SSzM1NzYobmFtZSwgcF9vZmZz
ZXQsIHB3ciwgc3RhdHVzLCByX3N0YXR1cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwgZ19tYXNrLCB3
YWtldXApICAgICAgXAo+ICAgICAgICAgRE9NQUlOX01fT19SX0cobmFtZSwgcF9vZmZzZXQsIHB3
ciwgc3RhdHVzLCAwLCByX3N0YXR1cywgcl9zdGF0dXMsIHJfb2Zmc2V0LCByZXEsIGlkbGUsIGlk
bGUsIGdfbWFzaywgd2FrZXVwKQo+IEBAIC0xMjc0LDE1ICsxMjg4LDE1IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2luZm8gcmszNTYyX3BtX2RvbWFpbnNbXSA9IHsKPiAg
fTsKPgo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2RvbWFpbl9pbmZvIHJrMzU2OF9w
bV9kb21haW5zW10gPSB7Cj4gLSAgICAgICBbUkszNTY4X1BEX05QVV0gICAgICAgICA9IERPTUFJ
Tl9SSzM1NjgoIm5wdSIsICBCSVQoMSksIEJJVCgyKSwgIGZhbHNlKSwKPiAtICAgICAgIFtSSzM1
NjhfUERfR1BVXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgiZ3B1IiwgIEJJVCgwKSwgQklUKDEp
LCAgZmFsc2UpLAo+IC0gICAgICAgW1JLMzU2OF9QRF9WSV0gICAgICAgICAgPSBET01BSU5fUksz
NTY4KCJ2aSIsICAgQklUKDYpLCBCSVQoMyksICBmYWxzZSksCj4gLSAgICAgICBbUkszNTY4X1BE
X1ZPXSAgICAgICAgICA9IERPTUFJTl9SSzM1NjgoInZvIiwgICBCSVQoNyksIEJJVCg0KSwgIGZh
bHNlKSwKPiAtICAgICAgIFtSSzM1NjhfUERfUkdBXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgi
cmdhIiwgIEJJVCg1KSwgQklUKDUpLCAgZmFsc2UpLAo+IC0gICAgICAgW1JLMzU2OF9QRF9WUFVd
ICAgICAgICAgPSBET01BSU5fUkszNTY4KCJ2cHUiLCAgQklUKDIpLCBCSVQoNiksICBmYWxzZSks
Cj4gLSAgICAgICBbUkszNTY4X1BEX1JLVkRFQ10gICAgICA9IERPTUFJTl9SSzM1NjgoInZkZWMi
LCBCSVQoNCksIEJJVCg4KSwgIGZhbHNlKSwKPiAtICAgICAgIFtSSzM1NjhfUERfUktWRU5DXSAg
ICAgID0gRE9NQUlOX1JLMzU2OCgidmVuYyIsIEJJVCgzKSwgQklUKDcpLCAgZmFsc2UpLAo+IC0g
ICAgICAgW1JLMzU2OF9QRF9QSVBFXSAgICAgICAgPSBET01BSU5fUkszNTY4KCJwaXBlIiwgQklU
KDgpLCBCSVQoMTEpLCBmYWxzZSksCj4gKyAgICAgICBbUkszNTY4X1BEX05QVV0gICAgICAgICA9
IERPTUFJTl9SSzM1NjgoIm5wdSIsICBCSVQoMSksIEJJVCgyKSwgIGZhbHNlLCB0cnVlKSwKPiAr
ICAgICAgIFtSSzM1NjhfUERfR1BVXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgiZ3B1IiwgIEJJ
VCgwKSwgQklUKDEpLCAgZmFsc2UsIGZhbHNlKSwKPiArICAgICAgIFtSSzM1NjhfUERfVkldICAg
ICAgICAgID0gRE9NQUlOX1JLMzU2OCgidmkiLCAgIEJJVCg2KSwgQklUKDMpLCAgZmFsc2UsIGZh
bHNlKSwKPiArICAgICAgIFtSSzM1NjhfUERfVk9dICAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgi
dm8iLCAgIEJJVCg3KSwgQklUKDQpLCAgZmFsc2UsIGZhbHNlKSwKPiArICAgICAgIFtSSzM1Njhf
UERfUkdBXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgicmdhIiwgIEJJVCg1KSwgQklUKDUpLCAg
ZmFsc2UsIGZhbHNlKSwKPiArICAgICAgIFtSSzM1NjhfUERfVlBVXSAgICAgICAgID0gRE9NQUlO
X1JLMzU2OCgidnB1IiwgIEJJVCgyKSwgQklUKDYpLCAgZmFsc2UsIGZhbHNlKSwKPiArICAgICAg
IFtSSzM1NjhfUERfUktWREVDXSAgICAgID0gRE9NQUlOX1JLMzU2OCgidmRlYyIsIEJJVCg0KSwg
QklUKDgpLCAgZmFsc2UsIGZhbHNlKSwKPiArICAgICAgIFtSSzM1NjhfUERfUktWRU5DXSAgICAg
ID0gRE9NQUlOX1JLMzU2OCgidmVuYyIsIEJJVCgzKSwgQklUKDcpLCAgZmFsc2UsIGZhbHNlKSwK
PiArICAgICAgIFtSSzM1NjhfUERfUElQRV0gICAgICAgID0gRE9NQUlOX1JLMzU2OCgicGlwZSIs
IEJJVCg4KSwgQklUKDExKSwgZmFsc2UsIGZhbHNlKSwKPiAgfTsKPgo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IHJvY2tjaGlwX2RvbWFpbl9pbmZvIHJrMzU3Nl9wbV9kb21haW5zW10gPSB7Cj4gLS0K
PiAyLjM5LjUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
