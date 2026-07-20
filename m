Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBA6C44512
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 01:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA40yuScKIADisLpiyJHWmRuG8aGQfz1A8HjtsokxAQ=; b=JVcKiOrGcC+MHw
	gYkOL6QvBrhqj1EZZcRK5WjtSRe43/Hj7/MNybo8shIig9hDalSDBF137jKrOeLwwJ4axEdCPZelE
	UFPnXf6T+RWb21xynFOOFP/B/ng0nxj3b9tFfqWqE4fw+YYBzgKZjZuigJ7r4TDqkqBZ1NC2DanL1
	4Wrkvg93bBn1niX4qxjq5zOMq4mHEA4JJE/j/pBSC7R+q5+KcfiRUPA2AwH97kQLscshUvxqgnBnf
	lRf0Sja15sb+3r1ZrcB8ufs1Imbu5pyhfIz0ojRS9bPdqFpPSuKSydq3G3U6PU/18wQgr1iWHkHKV
	qMQ21p5f1O6tpaTdyBNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcz9-00000005coF-1nQX;
	Mon, 20 Jul 2026 01:39:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcz6-00000005cnU-2BiA
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 01:39:58 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66JNum8T853166
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 01:39:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kHtfumkrjgWV6lqa6yLCz3o3in3lRj0JfrLm7BDLacg=; b=Gf1eMcpZ+8HPLJAN
	fiCceCP8o7gZyVS2ficRMT61jE+1kif8cDyKp2T1NMhKtz2Y2q63BlRPiWUIy8Wx
	ClhT/nckFZRUezDlKJAJYLKBzNkwyV3y7FSgeEc2dtiHWtTF5vn73qZnyJCwY/Pc
	MDh+3AXYn3S9mFxazvO4DgAG4nDdcTJiGlgEKiXMAZyUvUb1ZQ2bQ4//YXiUNuEX
	TmycDo60JjR+RSmmEwmiG7Dw4UeuZ7yzMs2Tgz4hw5MHHHX2/USiF7cawmLTghao
	Cwo26aAoFMA1aC6bQxpS71lVfm1/V+/sD1/27YV3Du6UeWKH44ezy5aNwnhAxdJS
	ZKL3Ug==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2dc3wms-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 01:39:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cee894b3d8so119236355ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jul 2026 18:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784511593; x=1785116393; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kHtfumkrjgWV6lqa6yLCz3o3in3lRj0JfrLm7BDLacg=;
        b=D1hOaXZNRjlNeT34K4Zzx2y4dgqNM3jXj6zw4uapjp+8mE+4WxPs6KhYLDxT+GGlmL
         Fra2tSgkwN8d9I6NtbE2HGNg7WVmeMRmZlUBpR6XIjhzp2b6gjtn30GWIH29XAxFPnoK
         3KQCIRuvJB4dtAJ+mQuF4ZXFMFk+rnkSrxxOVf5BYaAtTTpmoxzYKuRxVnGYoSPQSMSd
         QJoEkOy7NAiwHgImGl749e0DOl2L7HYXEGj+OGksn3eI7wCkC9wfx66kmlICuMb2zCEX
         IB586LUC7RGcsAGemgybLP65W6dvo/KvlHKnCCen6wrsUpE/zTKWJ24cw9wmc0G0RKqL
         XwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784511593; x=1785116393;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kHtfumkrjgWV6lqa6yLCz3o3in3lRj0JfrLm7BDLacg=;
        b=KzcAFb3AckiqlVI2eGD7ktGgDynUPOsOI5C2YBFzZb3HtmmRNOEj8mIISNP8rgPT+1
         v7mLfxQ1ZRy5SaejMlCd9FtPDitZvV1RARWRbWDtsHU8qmdluRcNkKJ6bEcgyQgbmFFH
         OgbRMsnCY1jh4sOvH9/tGxUHl4s3kNOmsdqqy89CNOtyRxUAlGXNb9RiA4LObjysH4Sa
         x/QAHaLP0z8cW1O16r5FV68KvWdIPFgyG63eHOIiidH0MqEIb308tP1JPALwNdkzJH4F
         INQ8+HhpfNZ8IrOFo9FCRX+IxVFWxOYyjkI9U72AvE/imomHBlOONqehkZFt/8K9bh71
         d/hA==
X-Forwarded-Encrypted: i=1; AHgh+RpsoMWlWbTNPU7L3cKTsEZdPOHsqh6+iih8EYYGD/RzPWIl50G1o/XHkLHkZmP9WSwRlaq/8HCXXiLnfi1GVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwyClPPSxRkl1gPaggGAeYnv2IysA+3G0NXnCPRlpeNXMpJjhD/
	xEXDezKfD5lsBfTM5SN3Zh97Rpa4hwgV3HO0XZGLlbLSLnxzmH+dLn32tYHvgjaUtnQfTTxBsTQ
	L99LJJzImk6fqo0DbKLbcgDlKWqu/noRv7/P3voXL5IKRNgBTvUzvmeaWjbvroV5fu2u13IKQLi
	A=
X-Gm-Gg: AfdE7cni8ErJPplUcVjShv5R2HsKmz3FF2bF+XA/w8eRVc6sT+40txzXcIi7ua5BT0E
	rohRPLchxcqd93JiRHp+IwIhvanMMYkpI6oCcxvp2Z0fQEghmjTyobYN8Cdt6tPtslfL5rdhuJm
	X4Q4QxNtU0YXWq6i3tY+WLQor2mBiEC+bTa7d9oia3L86LfqZ5zHzorIn7tUPDhS1YmCyJUqY/h
	wsY8XaRVqb+imPljlLr/SocmSRzBYLqEJXwFLJrCO6/CPdaNEnqU/vEAONsyi1IfJ2H7ghlYYM8
	CLa1R/hW8iPZb2EvEYJJOXWIa02Ylpx0uwBeI9Ty40oNQdX+U2K9hsmtqv3YMkUNaVK706W9yml
	+Cmza0+9Mn/VOWz6O
X-Received: by 2002:a17:902:d987:b0:2cc:a977:4260 with SMTP id d9443c01a7336-2cf3489c64amr138490555ad.21.1784511593220;
        Sun, 19 Jul 2026 18:39:53 -0700 (PDT)
X-Received: by 2002:a17:902:d987:b0:2cc:a977:4260 with SMTP id d9443c01a7336-2cf3489c64amr138490325ad.21.1784511592787;
        Sun, 19 Jul 2026 18:39:52 -0700 (PDT)
Received: from jic23-huawei ([50.35.46.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cf34730e35sm47246165ad.64.2026.07.19.18.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 18:39:52 -0700 (PDT)
Date: Mon, 20 Jul 2026 02:39:47 +0100
From: Jonathan Cameron <jonathan.cameron@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Simon Glass <sjg@chromium.org>, Andy Shevchenko <andy@kernel.org>,
        David
 Lechner <dlechner@baylibre.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
        Rob Herring <robh@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: adc: rockchip-saradc: Add RV1106
 compatible
Message-ID: <20260720023947.0064a45c@jic23-huawei>
In-Reply-To: <5684233.Sb9uPGUboI@phil>
References: <20260714131631.v2.1.0b846080833e4b836793c43fc26d1c6d817cf9b4@changeid>
	<5684233.Sb9uPGUboI@phil>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDAxNCBTYWx0ZWRfX3I9mLiUTOVqv
 xr2NYdW/eqk7PMjEH1VgCbkWzVfRb2MeqBLk7NhLinWE9IOSCkV5ELkDNO8uqLH/13mbiWdVMKx
 /NhK0VPqGDVowwqiyA9+35H32tbRVCY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDAxNCBTYWx0ZWRfXyVtYATKKzETx
 z/+LU7+kDH70X7utgOg634Sz5+qedB0e4L0YHUJXBDtMSoExaHJchTb6K2+tSPpcFvLzRNqNfp/
 dGF6VOZoH3swdOddZvk3AOQPDzRiMa6OnUuQwNuhl5i1a1lUDal5LkfIFHFdUpmVmmynTCzqaKp
 kLUVch5mNVQwjhjBa4VZ36f+pvSD4NZSK+ljPJxNNQPUxRXNz2UsH25cYkvUeMDJz/y+3aBYyL7
 CPUxhW6wOfwoczWSvpBWjT6TdCg7l1JxioavAdZARruwMbuSqtQKvmPcIjM3tqtp6z917B1iNQ2
 mu/ZgdLOnacFXzZP92jEF1WJQjctoxIep3FCoZ2A/WLk9nVJtZz+Vcs/cvCGgQluLMOWCdleSGv
 ZAWa/E6v6DIBIV2Z43dA4WFHaV9Y/HFL1Bjmb6fhvyOdgTSb6qHuU4di7rZVNg7baqS38hDdhwb
 qJVht+O6Fc8xs4l88cA==
X-Proofpoint-ORIG-GUID: MS_FmwJt6YnVrnVgnfWdooitZZDm178G
X-Proofpoint-GUID: MS_FmwJt6YnVrnVgnfWdooitZZDm178G
X-Authority-Analysis: v=2.4 cv=FOQrAeos c=1 sm=1 tr=0 ts=6a5d7c6a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=qC1CW/w66vtJz1P9yTJxNA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=cm27Pg_UAAAA:8 a=-xwdloifxYJzbv6MhYQA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-19_08,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607200014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_183956_677942_19F924CE 
X-CRM114-Status: GOOD (  12.19  )
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

T24gV2VkLCAxNSBKdWwgMjAyNiAyMToyMToxNyArMDIwMApIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gRGllbnN0YWcsIDE0LiBKdWxpIDIwMjYsIDIxOjE2OjMy
IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gPiBB
ZGQgdGhlIGNvbXBhdGlibGUgZm9yIHRoZSBTQVJBREMgb2YgdGhlIFJvY2tjaGlwIFJWMTEwNiwg
d2hpY2ggaXMKPiA+IGNvbXBhdGlibGUgd2l0aCB0aGUgUkszNTg4IHZhcmlhbnQuCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IFNpbW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPiAgCj4gCj4gUmV2
aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gCj4gCkFwcGxpZWQg
dG8gdGhlIHRlc3RpbmcgYnJhbmNoIG9mIGlpby5naXQuIFRoYW5rcywKCkoKPiAKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
