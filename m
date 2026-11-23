Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865F606A31F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3JR8r1Y0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IbfO81VA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WR5lZAld
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=P5i426i63kcQouKTsK2OhSfFRni6uofJNaZKo+sYsMg=; b=3JR8r1Y0JcMGehNOr6ckuUTio0
	JH2e9r0kxOigPa0pZwzh6EmEjL4pcn5cwA23lN14GAbgfFdId2s9nyizxeCp7RT4wThmz2SD4+XBt
	+RQDvYrRTwcv90Ra3eVBnHzH0smxC4NHv8pTUeBnAjyl7Wk2PjFL3j/QCnC45yRamTYAscDdrOe7V
	+zz8nUhi4OZAouGuhb7ATfM06JptyHBa/saq/itDZnEHYOxLyeF7b6/qIl5EOyy5NBU1nx9jMC4LD
	MGEwwm5CdzRiN6NTbKz+uK/ZCbBx07GfFj2grwfvclolN+wKu9pJ/bE5Y0ot4ac7/3gymYDvSOCS4
	rcceammA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVZp-00000003tMU-0IeU;
	Mon, 23 Nov 2026 15:03:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVZl-00000003tLM-24PF
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:03:28 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANDL1AL1937831
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 15:03:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sZmn/sNxwAfKWKSIqSCT0pljBWlXHOxHLlaVhxvwNo0=; b=IbfO81VAygWqws1q
	TyYwzZLUHWgB64GgdO9dyaTt3zpAjoZJTDLgfEK+Re46q144zQ/jXm7UXcLujI3H
	3704UyUwCzMPStRZkWgk0SAvSYRVpYoQqPVCPMbG1rBBjNGXvQRthDqmm/VLgGmq
	eua9pk6y4yQJJboujmd9FOPeCnKeMLAi1zWreYZmb4BfbxKi6k8Usii2edWf3Qf2
	TPZ6mQvAySOhb7U/BEnLigjn1K43367diJYkpo40vAtzLfnyiP79fe+z1XO1Yckd
	yeY0KLT8BbSG1ND5//lKn9wXU+qJrzCeCaaZuhg7/Ttmcx3Impz72pohCAly1rYE
	5wYCbg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4exx25n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 15:03:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2efe8f2bdc0so25984255ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 07:03:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795446203; cv=none;
        d=google.com; s=arc-20260327;
        b=i2z2j8v0FZPHsAqPJpZV5aYvYEmsCr45Jse/xYGKlGI3m3bpDJVPtoKWIU+StNudQO
         U4V9y7vwgfJJG6AxLsAGILK9KdjdVZSuOMG91S6JHZH6OgkU4FolnGQQORH2SKiDp19A
         W98piqUmnqxx5FBe9pXmF2Yfz3TzlYcfyToS0xUiNb30qSW5+K6lHhvPAIh40lN7iS6i
         E26OZgVBxOBIb4wouAmOXE3lK7EsIMPpq5AbQagnx8yzAe/foY9I4j35arjZMNH4B2HM
         jQY2ChfBWs71XZS29IugMd/qViqzj0tOPQWwQQLMz1eUARWoC1A4+VAVyLAwEskcbzEJ
         9zew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sZmn/sNxwAfKWKSIqSCT0pljBWlXHOxHLlaVhxvwNo0=;
        fh=la+iZCoGNmr9rMsp7nxRDoJqPkkZ+Oa/PnYQ005fnjI=;
        b=KvHBbsNlp3RKjmIi1+FvBQ3/5IAyUVc5Qa6+PXjcB1o6ybyGVouJQN+lMFo1dQbbT3
         bgYv/4FN93klpuski4mai3SqyPK4YtI8iZN2aQ4M9Co7A2rzLXT2eEziEufL0sYIR2RO
         6RGrXoBNdi9opqjJIKEkBekCpAH32Fjgm4YEG0xfUgizgMKcHaHLkkzg7rtXSOumt5ex
         nOfqVcgweBItZPqx26qpRZlG/o+Jz0qgoQ/I4vCg1k4/MqSKvHnVWw7+xcbSW5FZOtFI
         m4jpK9/yRqgigrlQj2t31IIZ9d4Fd8jKx9It5D6EhVr8TwdEUd+v5hSCyFpU7DuNE5e4
         ee8Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795446203; x=1796051003; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sZmn/sNxwAfKWKSIqSCT0pljBWlXHOxHLlaVhxvwNo0=;
        b=WR5lZAldSvjfj+lOaslyoMTbLLNjCchECLmXwmyqGRUij0psg1dDnqTzWvWUkK80Zu
         4V4yzi4pZtFbZjqRFoKt9Qh00zV/J8WSGfM5o6c2bUR4/wyAC8ppWp5HHeKnDbQks6wk
         1LRdu0ScaAJrPwNISriwS7WZSHkeIM+l3+OXulbpN3mHs7wxTqiTgkM31R/Vq5suvv6a
         t+2K2tf5STAbEdpfy93iKaoS4yYfe/XfJXNB/C3ghDL/LLZn/Fzpbd2aWMdqO3llkkgN
         P8zqqanDEE1E3NnxZIYmxqUpdJVv+1pNY28/89/r8LJd3TOoh8kqzHasFKbAnU01wzia
         C4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795446203; x=1796051003;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sZmn/sNxwAfKWKSIqSCT0pljBWlXHOxHLlaVhxvwNo0=;
        b=zfVOlboXBCiA4AqM+P4GDhuqgIAtwit847hv8Uz7FuqQ4LX0SPmfRD9AmroTyPg3mR
         3dJBWdXIGyyjcbBhr+ry2ITM0PhcuIY387oYOxpFsJg3OA4Y3D3++8keExM7iUa7HAhb
         75KJkuDrOKw5+nH//QwCsiHvI8Nw4GbuBZJ+994FSBo/AZTwVbA5lx8lCwUZ5UgpoLLl
         dFnBAWQs2V1SeLU/+5Ctg3p+NiH99Iw6whWhmG0x7GmWlaTwVU5m7qc2b+yszWNbe2kc
         jM8nFoL6mZVvd7E0TlDBFoHtl6eq74T0+4l0vQU2qScqvRREERTikDE1Fhk1T9ye5GPC
         t2AQ==
X-Forwarded-Encrypted: i=1; AL+hErGud4KgTpwCTzb2Fh0PtdczlkNW1F+gnJgdtFdM/mZILAfitK8CvJKR9JB/oCnAA1XcduTKbi8VYAtjugHisw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/OjW4aMr6q/m86SYIgUdSxiO6suvnK879rdnxeC+dwUureqAbh
	NcpCgwfdt9CgRMsy/RF7fDs1vbl6v4Bf8dy5dzTVB7RvnxdEvFGXVU35GcRo3Auvf5a1SVRPMao
	WKRz4Caa2sTjKrs+UtfohD9jW8XOWp4BttKr4F4gaiCKYTcI4ze14UDz5KJF4aXkdzNfryqbbtO
	0Rt3iwOT6hpjmfETI/cEasaJTQD044BXBR30tf8/cBP28No3RWEQ==
X-Gm-Gg: AZFdTZfy9xZ2gW9SIrQT4Uu50GZ7ZPScNwuAztYhEjjx9dc56WuP+ckhyZVwAVV28Pd
	GAjLxGkleUZ2Vleoj3UdCzrzinFvRLeQz6ibBS6y+yJGp5FgHQBcS5K3ZBSC3+M0sD+7YCC8kz5
	UE/52vg3BFpsto5VTwOaxlaGqZZVOsDS/FUXr1PGA9gWVmsAaa/v+o4KI7EfftQ1jWCMadafLyN
	xV0so8yJCpPwNzq
X-Received: by 2002:a17:903:1c9:b0:2ef:fcd8:df75 with SMTP id d9443c01a7336-2f03f18847fmr120968235ad.36.1795446202955;
        Mon, 23 Nov 2026 07:03:22 -0800 (PST)
X-Received: by 2002:a17:903:1c9:b0:2ef:fcd8:df75 with SMTP id
 d9443c01a7336-2f03f18847fmr120967425ad.36.1795446202035; Mon, 23 Nov 2026
 07:03:22 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261113-pmdomain-rockchip-v3-0-b7039ca30b87@gmail.com>
In-Reply-To: <20261113-pmdomain-rockchip-v3-0-b7039ca30b87@gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Mon, 23 Nov 2026 16:03:09 +0100
X-Gm-Features: Aa3M54p3bvaqL4-4P5a9q3TQOKbyz1uWNRpSG9PtFinKLWfQ4vS-W5Tpi3kneLA
Message-ID: <CAPx+jO8KYfvm+=UXKYZv+xBAmGNUU7xtYH9+cJRtOrnQh3GmrQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] pmdomain: rockchip: fix the probe error and
 deferral paths
To: aiyengar1990@gmail.com
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Kevin Hilman <khilman@linaro.org>, Caesar Wang <wxt@rock-chips.com>,
        Elaine Zhang <zhangqing@rock-chips.com>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Yao Zi <me@ziyao.cc>, Igor Pecovnik <igor@armbian.com>,
        stable@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=FKKOVOos c=1 sm=1 tr=0 ts=6b0455bb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8 a=bC-a23v3AAAA:8 a=pGLkceISAAAA:8
 a=0OowS_b49qHy5rEh488A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: oIDCU_rZI-nSB5uKksw4e-EMwPMN-6ML
X-Proofpoint-GUID: oIDCU_rZI-nSB5uKksw4e-EMwPMN-6ML
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA1OSBTYWx0ZWRfX4lf1T7tTqn9b
 Tgl7uZbBZomHC2ntN5I7vc177aNjrCEqA6UsZqCy9byki+GDHX5avzW25TZVKn03arfO+dzaY3v
 J4GldIDWrb0YoOiJLWchIabTSP/zuAA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA1OSBTYWx0ZWRfX6pe/r8ZSbi2B
 mT0kXLqWY9mhCaZfTTJ7nI+wpwiV+28lDB/TwwcLhC7lR2/wTLuYoaKU/5KcCbdhXZkWqB9Nnt2
 VJJ69UDNvoCNIEDki9FVNMMEPRqH/6/MUEUFJVdQB9Y+p8MXWJmjmiDJO7gFo84AWo12klC9hOc
 WpS8FckfTSFerEwzxUqkf0r7qE8Qezo2Il5yaULDif8l5h4w9GumttqzFLtBCwtXV9LSvgDwCVR
 YRluEXbwTLNJe6PXkia+DCqJexohybrF4J/Pv2UAvf8vnBhwnYTnBSLbuFA+Q1ALcWb+N+OGevv
 aBE1bJcWiZu83r5EuramzDeayngoMCV4H78VeNfe0RlW/N3HCiUtnJxsD0zjL7QFbl6x3G99RFj
 kBt/HT+459DWxP+4ktPRHfbfQMcUrMJ9Q1OCBAJVpql+2mWXW0gVj+WlDacqB31jGXuX+o9oT32
 cT+HTiTpgS2CVikjpwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611230059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_070325_543796_2D24C8E4 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBOb3YgMTMsIDIwMjYgYXQgOTo0MuKAr0FNIEFydW4gSXllbmdhciB2aWEgQjQgUmVs
YXkKPGRldm51bGwrYWl5ZW5nYXIxOTkwLmdtYWlsLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPgo+
IEZpeGVzIGZvciBhIFJvY2tjaGlwIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyIHByb2JlIHRoYXQg
ZmFpbHMgb3IgZGVmZXJzLAo+IGZvciBleGFtcGxlIG9uIGEgZG9tYWluIGNsb2NrIHRoYXQgaXMg
bm90IGF2YWlsYWJsZSB5ZXQuIFRoZXkgYXBwbHkgb24KPiB0b3Agb2YgMS8yIG9mIFlhbyBaaSdz
IHNlcmllcyBbMV0sIHdoaWNoIGhhcyB0byBnbyBpbiBmaXJzdDsgcGF0Y2ggMgo+IHJlcGxhY2Vz
IDIvMiBvZiBbMV0uIE9uIHRoZSBwbWRvbWFpbiBuZXh0IGJyYW5jaCwgMS8yIG9mIFsxXSBjb25m
bGljdHMKPiB3aXRoICJjeWNsZSBhbiBvcHRpb25hbCBwb3dlci1kb21haW4gcmVzZXQgb24gcG93
ZXItb24iIGluIG9uZSBsaW5lLgoKVGhpcyBzb3VuZHMgbWVzc3kuCgpJIHRyaWVkIHRvIGFwcGx5
IHBhdGNoMSBvbiBteSBmaXhlcyBicmFuY2ggd2hpY2ggZmFpbGVkLiBQbGVhc2UKcmUtYmFzZSB0
aGlzIGFuZCBzZW5kIGEgbmV3IHZlcnNpb24uCgpGb3IgY2hhbmdlcyB0aGF0IGFyZSB0YXJnZXRl
ZCBmb3IgZml4ZXMsIHBsZWFzZSBzZW5kIHRoZW0gc2VwYXJhdGVseQpmcm9tIHRoZSBvdGhlciBp
bXByb3ZlbWVudHMuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKPgo+IFRlc3RlZCB3aXRoIHYxIG9uIGFu
IE9yYW5nZSBQaSA1IChSSzM1ODhTKSwgdjcuMyBiYXNlZCBrZXJuZWwsIHdpdGggYQo+IHRlc3Qg
ZGV2aWNlIHRyZWUgdGhhdCBtYWtlcyB0aGUgUERfRkVDIGNsb2NrIGFwcGVhciBsYXRlOiBubyBm
cmVlZAo+IGRvbWFpbiBsZWZ0IG9uIGdwZF9saXN0LCBubyAtNTE3IGVycm9ycywgYW5kIHRoZSBj
b250cm9sbGVyIGJpbmRzIGxhdGVyCj4gd2l0aCBhbGwgMjYgZG9tYWlucy4gVGhlIHYyL3YzIGNo
YW5nZXMgYXJlIGJ1aWxkLXRlc3RlZCBvbmx5Lgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNjExMDUwMDEyNTcuMTM2ODI2Ni0xLW1lQHppeWFvLmNjCj4KPiBEZXZlbG9wZWQg
d2l0aCBDbGF1ZGUgKEFudGhyb3BpYyksIHdoaWNoIHdyb3RlIHRoZSBjb2RlIGFuZCB0aGUgY29t
bWl0Cj4gbWVzc2FnZXMuIEkgcmV2aWV3ZWQgZXZlcnkgY2hhbmdlLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQXJ1biBJeWVuZ2FyIDxhaXllbmdhcjE5OTBAZ21haWwuY29tPgo+IC0tLQo+IENoYW5nZXMg
aW4gdjM6Cj4gLSBTcGxpdCAyLzIgaW50byB0aGUgZml4ICgyLzM6IGRlZmVycmFsLCBwbV9xb3Mg
ZXJyb3IgY29kZSwgY2FsbGVycycKPiAgIG1lc3NhZ2VzKSBhbmQgYSBjbGVhbi11cCBvZiB0aGUg
b3RoZXIgbWVzc2FnZXMgd2l0aG91dCBGaXhlcyB0YWdzCj4gICAoMy8zKSAoWWFvIFppKQo+IC0g
U2hvcnRlciBjb21taXQgbWVzc2FnZXMgYW5kIGNvbW1lbnRzIChIZWlrbyBTdHVlYm5lcikKPiAt
IE5vIGNvZGUgY2hhbmdlIGZyb20gdjIgYXBhcnQgZnJvbSB0aGUgY29tbWVudHMgaW4gMS8zCj4g
LSBMaW5rIHRvIHYyOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjExMTItcG1kb21haW4t
cm9ja2NoaXAtdjItMC01Y2Q5NDJhMjNkZjdAZ21haWwuY29tCj4KPiBDaGFuZ2VzIGluIHYyOgo+
IC0gRHJvcHBlZCAicG1kb21haW46IHJvY2tjaGlwOiBwdXQgb25seSB0aGUgY2xvY2tzIHRoYXQg
d2VyZSBnb3Qgb24KPiAgIGVycm9yIiBmb3IgMS8yIG9mIFsxXSwgd2hpY2ggZml4ZXMgdGhlIHNh
bWUgYnVnCj4gLSAyLzI6IGRyb3AgdGhlIGNhbGxlcnMnIG1lc3NhZ2VzIGFuZCB1c2UgZGV2X2Vy
cl9wcm9iZSgpIHdoZXJlIHRoZQo+ICAgZXJyb3JzIGhhcHBlbiAoU2ViYXN0aWFuIFJlaWNoZWwp
Cj4gLSAyLzI6IGEgcG1fcW9zIHN5c2NvbiBlcnJvciBrZWVwcyBpdHMgb3duIGNvZGUKPiAtIExp
bmsgdG8gdjE6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MTExMC1wbWRvbWFpbi1yb2Nr
Y2hpcC12MS0wLTZiOWZhNmViYWE4NkBnbWFpbC5jb20KPgo+IC0tLQo+IEFydW4gSXllbmdhciAo
Myk6Cj4gICAgICAgcG1kb21haW46IHJvY2tjaGlwOiByZW1vdmUgc3ViZG9tYWluIGxpbmtzIGJl
Zm9yZSB0aGUgZG9tYWlucyBvbiBlcnJvcgo+ICAgICAgIHBtZG9tYWluOiByb2NrY2hpcDogZG9u
J3QgcmVwb3J0IHByb2JlIGRlZmVycmFsIGFzIGFuIGVycm9yCj4gICAgICAgcG1kb21haW46IHJv
Y2tjaGlwOiB1c2UgZGV2X2Vycl9wcm9iZSgpIGZvciB0aGUgb3RoZXIgcHJvYmUgZXJyb3JzCj4K
PiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAxMzEgKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NiBpbnNlcnRpb25z
KCspLCA1NSBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogNzQ3NWVhOGI1ODYxNmIz
M2MwNGFmYjk3NmNmMGZiYWFkOWRkNjNmYgo+IGNoYW5nZS1pZDogMjAyNjExMTAtcG1kb21haW4t
cm9ja2NoaXAtMzQ5N2EyZTdmZGY1Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBjMmYwYzVlYjY2
NTFiYWE3NDRmNjYzNDJkYjYzNDg1YTY2ODVmYjcxCj4KPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBB
cnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
