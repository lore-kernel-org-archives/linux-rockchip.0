Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30939C98311
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tR0UYAAJ8L2VygYiq7tKnoRZK9I+1rnLejgigbN8i0=; b=Ls4f70+pLm5vCC
	pbULyYmIYWZS6bE+6ZZ3l0HaWArcK3TTAvi3iUHnc/VQC9L0SgVtlceZuwV39vjLPWMqVog+q7Wvv
	D9HXlVGwhKglXNRMfdGFu5xFDfnnVT9SwxJWA/M1Cj4PmjenEzn4azil/4uMP65F6yvKIg1HZsSPk
	5WvYH+d29A5N6aehiT6VPnzeibtjUlCin2A7MxNzR21bGHugSqOTyiCnnpmnmNk2k/2t/9I0pCB9h
	Ugic41hUBjjMU5ZkNc+JxpjWu6BKAuPpXGa7vg5/S6m772DT1KnB0Uva8Y0yimTjqojwJN3yqsHDm
	M6TS4ZL3KgzLefQyiqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9f7z-0000000AUHy-1U7n;
	Thu, 24 Sep 2026 08:48:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9f7x-0000000AUGs-06fj
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 08:48:26 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O62MLC1475902
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 08:48:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QknsdGv7tMuii6XXd1cgWwDNDr2xK8Jt/GMeIq+snas=; b=UN94VWfFCpWeeKgy
	OU62S9mvL7Zq/yMvALPyLzwyGxlf9AWoAZ4ggWl2keo+hEG8mUFHMJrFwJGYizXh
	Z1XpG7q39jMmxqybXtGM5xAEvAuSbkLJT9QPHNcfUiyUa7PdLzBTgV/3wO+6enDl
	aJdFfIFXddLX5conuM5JpXFzZieHf0UbvR6iK5II/WZu6O/gZgcQPaZvp4I4Tys7
	Dp/itSLyVeZOQCxblW/qFDjgZQrOE7LQSmP4OWMiDn2uUjkpEQWZv5fk2PL45WUw
	/9rbbA75soYkShhap0pXQ/Tm7Cbd6DNk6yJ/1BZS6R2sS4bEhJ5AdNhj18OCvQaw
	wGOn+g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvx8agmwr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 08:48:24 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8632fdf67dfso717971b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 01:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790239704; cv=none;
        d=google.com; s=arc-20260327;
        b=mfpprJQzksfHSrIQr0BsYYlK+y+Bvkn+ti+Xv2CKEZ3X2EcBBQy8KhF3+v0IH+RFpy
         Sk4kZ+u87HSXtuLacdvxQmMVVfTCIeHGapZUG57mOVW90N4IEqA4v4jwGXqc0UguzFMz
         PsbZV0upVEcVqlb4OzzRL5I/WISQSr9sESTWjYpGv5FbFtaiVYAwsjz9K5vszo07XyE0
         das0niuLTTZ9o5rk6kmz0gKMc1q6wO42spyhT71lJkZVznbGeEyOdCDiE6RqO6krT6Ib
         dZk+3oA1zdOkDHn7WkHxPn7AD4g09BlX9sjkNgO41noGlit1O1Yu9acGCFtA08P1MLtC
         xyPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QknsdGv7tMuii6XXd1cgWwDNDr2xK8Jt/GMeIq+snas=;
        fh=Gmq9ca5Gpur4+cMl3kdZgzDcNK9ApsUBd7RucGI63qY=;
        b=dcIH7HtQCbwgvq/mMl2bapdby5O48ZOvlcC8pEtnfsggWM6DBED0uqei7+qvpzD+FM
         t5BVnmxmZdXwPFdBrTMg+KA85MiPy3bhV1AzWh2bPFYX8eMSGBX0Efv6qWRvWzOqks/X
         As2KtqAsxPZayfAG9O0nPXR0uuRcweBkeI60cTddBANh8POy42OBYgtsPrSPfBnkPhZD
         Kk+HBaMB8TTCjMuxldY5q+yApcCgThY2NqpJknA5yjKoAG3s1JOwqY/t82cQTVaVhXoL
         4QS2JdntzdQ0kUd+B4wqy5ZT0PX3qofALl178PX+Dg2eNvOwBYkQA2bLXLtW1nWzcqVy
         jm4A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790239704; x=1790844504; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QknsdGv7tMuii6XXd1cgWwDNDr2xK8Jt/GMeIq+snas=;
        b=HVLkREzjj2HiSj2066vJV+iCINvWUUb23jbqsOxJaaO1xFmbBKLDYAb+aCMyAoOl3v
         1Y/DIRPHKcZgNedb7YlUKlItk3b6SWN/GRBqS2+NsgXpDKxLZ6Y0TV80t3oP+psr6JbR
         UYoLaAvioKYvuXSPIMNeiiBD4f3roWOd+YXfyJ9ZlV0qX5ouylhLSFmBMl5GFH2K7ieS
         wiG07iYKcPxojzTYzMAAWplG9prFlVqNWxkIGD72XlQoJrZsvOyeMrw2az/OyZ2xM0OT
         pxP0QzKJqhxOPwFW9SWyacg9caejnkzYtcskpjjdhrpudd2VlRMUdVHFco8fnEjhFeLM
         zc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790239704; x=1790844504;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QknsdGv7tMuii6XXd1cgWwDNDr2xK8Jt/GMeIq+snas=;
        b=2ecxbMofNADpKdWllHRt9VKHh/qNHQ0VSu7B9zSvDZpgitdjzMXO61HPLRqs29ftDh
         GBm37TZ5ittI9M/C4uHVxWDkQHEF6t0bcK266j+MHIakfy2bEJgJkcesjow/NQvc+oT0
         EqrW1If0KqUJdsEf/meREUrRyd4vy/1K5T/ERhDZsDEQsZDTgiWIGWUcGeS3+bYIL0WB
         uB6cr0WfSWHc5rAdmf3AiX1raMY0yodziEjsy6GzrgduawXLRUDRBFCe+xPgXBaBEBdi
         JGOAGdOogw0HLL+fn3QlEyv4w9pAiqT5zSegB+FECCaBoypCi0h+fA2RhVVnzQJ2N+3q
         VzOg==
X-Forwarded-Encrypted: i=1; AKwUvByNZd8zzimCbeQeb+G/4PzTfGclmDrxdLdWC1wdvLLRElXJ5155PbHN9N+n2PumasG9zM7NNlQBacTIZG9Hkg==@lists.infradead.org
X-Gm-Message-State: AFuF++nsemFlRJ6M3gPK7k8+Hy1dsWegVfRgwL8lMx96EeGPoXURLN4u
	AzsZuD2C3Am7OAnnbInaRP+g35WlaVwoL4SNZIrv9ZecPfX48g/2umDgQRWBE8zujCyLHDtP9Jo
	umZ/Rzzo+CD/0mm6hHrdfhorAkWGolFgqOXRetoU0wKvp+UWjdQtZe9AIxPJnArFYhwzQZKwezc
	LPlYfDWG875X5vIHrCyI4adYUGymISpEdhdOsM8v0kxWIB2YIwZA==
X-Gm-Gg: AYBFou1kc2J7FO7PGgqDiansf5RyOyW1XXpikWusBWkk5lEEmnFAXozpXtsDhOItcj8
	8cudBRe5XWXpSgNIqsjTv2eUOvKSLoVnY5I+impq0mtttb1d5XQANiTfkZix32gczJxsLJiCFXP
	wy7LxvA4zyvVaznXr5IhHiuwVap7AEOywLO4ZkKdmhDopDpN9dW1xlLx2OIA==
X-Received: by 2002:a05:6a00:3e16:b0:874:72b6:7daa with SMTP id d2e1a72fcca58-87ea07d0ad5mr1069231b3a.37.1790239703765;
        Thu, 24 Sep 2026 01:48:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:3e16:b0:874:72b6:7daa with SMTP id
 d2e1a72fcca58-87ea07d0ad5mr1069219b3a.37.1790239703328; Thu, 24 Sep 2026
 01:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
 <CAPx+jO-Ph038WJQ4gMH93XzoMC09+meht=yT9JQBAnTD6HzGEg@mail.gmail.com> <d07cb609-ca44-46aa-bd56-2554846399f6@auroraos.dev>
In-Reply-To: <d07cb609-ca44-46aa-bd56-2554846399f6@auroraos.dev>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 10:48:11 +0200
X-Gm-Features: AclHuK8KtFrkT0Zvnhed46Hh0nuKWmXhRe39UhgcDjpnRieTa9rTOGP9GA8usM8
Message-ID: <CAPx+jO-c_w55jO9i_Db459Ya+9yV3nT3akQcaPxr0qb7TqSejQ@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in rockchip_pm_add_one_domain()
To: Sergey Shtylyov <s.shtylyov@auroraos.dev>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Caesar Wang <wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>,
        linux-arm-kernel@lists.infradead.org
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAzNiBTYWx0ZWRfX5KM0B9GU57Hd
 Pf86MqdmUuWFpl09105XcBHQyUtqtHAHW1q/Qkrhsy36t0vItV4eugReEfznetWerakIbo2a7Bj
 cptCLepFbxDtuZWUiINJppkJHcGUzY4=
X-Proofpoint-ORIG-GUID: VJe3cqxTC7tnAnikNp_I9SnavTbaGJOS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAzNiBTYWx0ZWRfX/ANfH9MKsfBQ
 NU/2IqgggBqZVbEgN5aEV1InhZt5Z+YyviwmLUbm5Uu/S7gykNrAsFOAWqoy6Cqerfw/zrlmw6E
 31Of8AoY5H0ABzK2V4eN1n+6mrb/YZKm6vHu0D6reIZw4vI7oeqspIK2PX+c+BH4tTuqYx2p0U/
 NkUKvuPXlsVODNExe+LBkAbJQvpcoVwwoHvCtF67KO9Lma9RmRDaxHgefuKtgDekuVbWlmVw3Sn
 GRpsbzpoPaTHjALLkzIJ8y5FKTOpFI/+weOVFwSlU9FsjsFxIgGpoLg4AbWo+abw8e9NEx8DFDA
 nqiDC4zSOvw1KSKeQfe9VkBGDywKOY5uONjB55ornEmzbhdc7aUsaOxML7qUNwduZAu8H/I9gzI
 fVGitxibA6d3E4nXdBwHf+i0/PZuT3ZvnhBAmFuZu3KAD+2QOuyPJrDtS2UCtrltzah4qqVQuf6
 IV42bWE9kSfQZhj4l3w==
X-Authority-Analysis: v=2.4 cv=a6SlZkSF c=1 sm=1 tr=0 ts=6ab4e3d8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=HH5vDtPzAAAA:8 a=kRmKsBWSVBFGW6OGaTAA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=QM_-zKB-Ew0MsOlNKMB5:22
X-Proofpoint-GUID: VJe3cqxTC7tnAnikNp_I9SnavTbaGJOS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 impostorscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609240036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_014825_068304_9395ABCB 
X-CRM114-Status: GOOD (  26.12  )
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

T24gV2VkLCBTZXAgMjMsIDIwMjYgYXQgMTA6MzjigK9QTSBTZXJnZXkgU2h0eWx5b3YKPHMuc2h0
eWx5b3ZAYXVyb3Jhb3MuZGV2PiB3cm90ZToKPgo+IE9uIDkvMjMvMjYgMzoxNCBQTSwgVWxmIEhh
bnNzb24gd3JvdGU6Cj4KPiBbLi4uXQo+Cj4gPj4gSW4gcm9ja2NoaXBfcG1fYWRkX29uZV9kb21h
aW4oKSwgdGhlcmUncyB0aGUgY2hlY2sgKG1vc3QgcHJvYmFibHkgZm9yCj4gPj4gdGhlIGNhc2Ug
d2hlcmUgdGhlICJyZWciIHByb3AgaGFzIGFuIHVuZXhwZWN0ZWQgdmFsdWU/KSB3aGljaCBkb2Vz
bid0Cj4gPj4gbWFrZSBtdWNoIHNlbnNlIGFzIHRoZSB2YXJpYWJsZSBwZF9pbmZvIHdpbGwgYmUg
TlVMTCBpZmYgcG11LT5pbmZvLT4KPiA+PiBkb21haW5faW5mbyBpcyBOVUxMIGFuZCB0aGUgdmFy
aWFibGUgaWQgaXMgMC4gIFdoYXQgZG9lcyBtYWtlIHNlbnNlCj4gPj4gdGhlcmUgaXMgY2hlY2tp
bmcgcGRfaW5mby0+cHdyX21hc2sgYW5kIHBkX2luZm8tPnJlcV9tYXNrIHdoaWNoIChhcwo+ID4+
IHNlZW1zIHRvIGZvbGxvdyBmcm9tIHRoZSBjb2RlKSBjYW4ndCBib3RoIGJlIDAgZm9yIGEgdmFs
aWQgZG9tYWluLi4uCj4gPj4KPiA+PiBGb3VuZCBieSBMaW51eCBWZXJpZmljYXRpb24gQ2VudGVy
IChsaW51eHRlc3Rpbmcub3JnKSB3aXRoIHRoZSBTdmFjZQo+ID4+IHN0YXRpYyBhbmFseXNpcyB0
b29sLgo+ID4+Cj4gPj4gRml4ZXM6IDdjNjk2NjkzYTRmNSAoInNvYzogcm9ja2NoaXA6IHBvd2Vy
LWRvbWFpbjogQWRkIHBvd2VyIGRvbWFpbiBkcml2ZXIiKQo+ID4+IFNpZ25lZC1vZmYtYnk6IFNl
cmdleSBTaHR5bHlvdiA8cy5zaHR5bHlvdkBhdXJvcmFvcy5kZXY+Cj4gPgo+ID4gQXBwbGllZCBm
b3IgbmV4dCwgYnV0IHdpdGhvdXQgdGhlIGZpeGVzIHRhZywgdGhhbmtzIQo+ID4KPiA+IE5vdGUs
IHRoYXQgSSBhbSBkcm9wcGluZyB0aGUgZml4ZXMgdGFnIGJlY2F1c2UgaWYgdGhlcmUgd2FzIGEg
cmVhbAo+ID4gcHJvYmxlbSwgd2Ugd291bGQgcmVxdWlyZSB5ZXQgYW5vdGhlciBmaXggb24gdG9w
IHRvIGdldCB0aGUKPiA+IGNvcnJlc3BvbmRpbmcgZG9tYWluIGRlY2xhcmF0aW9uIHRvIGJlIGNv
cnJlY3QuIFlldCwgdGhlIHBhdGNoIGlzCj4gPiB1c2VmdWwgYXMgaXMhCj4KPiAgICBJJ20gbm90
IHN1cmUgSSB1bmRlcnN0YW5kIHlvdS4gVGhlIHBhdGNoIHNob3VsZCBob3BlZnVsbHkgYmUKPiBl
bm91Z2ggdG8gZGV0ZWN0IHRoZSB1bmRlZmluZWQgZW50cmllcyAoaW1wbGljaXRseSBpbml0J2Vk
IHdpdGgKPiBhbGwgMHMpLiBXaGF0IGZpeCBmb3IgdGhlIGRvbWFpbiBkZWZpbml0aW9ucyBkbyB5
b3UgaGF2ZSBpbiBtaW5kLAo+IHR1cm5pbmcgdGhlIGFycmF5cyBpbnRvIGxvb2t1cCB0YWJsZXMg
YnkgYWRkaW5nIGEgZG9tYWluIElEIGFzIGEKPiBmaWVsZCB0byAqc3RydWN0KiByb2NrY2hpcF9k
b21haW5faW5mbz8KCkFwb2xvZ2l6ZSBpZiBJIHdhcyB2YWd1ZSwgYnV0IHlvdSBraW5kIG9mIHBv
aW50IG91dCB3aGF0IEkganVzdCBzYWlkLgoKVGhlIHBhdGNoIGhlbHBzIHVzIHRvICpkZXRlY3Qq
IGluY29ycmVjdCBlbnRyaWVzLiBJZiBpdCB0dXJucyBvdXQgd2UKZmluZCBvbmUsIHdlIG5lZWQg
dG8gZml4IHRoYXQgZW50cnkuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
