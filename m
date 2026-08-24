Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82028C5DF94
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 11:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RT3UX/jc6dZNvv/J9fj4inik1CFvqUk6JvnFfqhArYc=; b=uq5vrR1/y4FgN6
	akE4/F7M8CNbtNX7yT7rwyGBN3PUsKgYBsEYrtTDwE0naOJVTdYUiA7OoWIIrwaA84LAbvYgmvUKa
	ZeBIzyx2paVLP2lDSmPjLTdZSL7Qp5PIS26ba149lUKs5iGXsgQOVdCs2yAnYUlwlC1c7YwZmu04O
	HTC8f8A/6I8pJe63DUuRQw0Xaa+iYu21xtnDPoZRjd+7c030NndFBT8WXaIjYvN/G/PLgtFpCF1c7
	Ku0vD1c41Ooq1Jge9bdbB/zvDZWXlSy49QET0kFaoxcFzeMx8dXcz4nc5DEBVOaLLwvmYX2z/hz76
	VpM70NtvVpUpTUja7tKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyStV-0000000GVwv-3i2R;
	Mon, 24 Aug 2026 11:31:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyStK-0000000GVtS-3jHn
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Aug 2026 11:31:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMOnA1800137
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 11:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KBcF3v6N3cNbIQQxRfkuaUX8
	wTPsyQxH9smMZXqQRa0=; b=OYWLqoEGssz/m7iECFiWlIXeP5MbL9O/UejApR1w
	xkuHm5qt2yguK+ma5PwMbB5gQn2Na0/jsaMALOqEHLLSsuO3z3bQKPBYqVeFF+Nd
	Bva8oKE0xEH6isPQLEj/qY4deya/3kjz+zfvsisWN6D9TY4zwXotyefg+fZesCDN
	eD9Xhp4fEzOdAoqcVcbtMLSeMor0SEzkjTW5dpY6jO8Z2ENGkwu7x+58A2qnFBrX
	VL2Z1gJ5DOKUkPT8L7HmedI4LTJIDTATi8cmynVdeb+jYKD4TO/r0Wo8rGY1ZNWi
	XbNcX2dFtgYYZ9nxzOCOKluw29VW7DAskIGP96Zz1lQpBw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8kv789e9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 11:31:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8fc6b670b4bso29527386d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2026 04:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787571061; x=1788175861; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KBcF3v6N3cNbIQQxRfkuaUX8wTPsyQxH9smMZXqQRa0=;
        b=RXkuIXJt2gYtwM0UhBB7NPJVZmXonpyFhnm0y4L+kPvGdGAYyEIF83w07JMOJYNmd6
         gRJ40RPTANAh8M0BP6U1gK0MTUQqLcWUjSzTfmnoXn9HttN48+kn01TC+0k5AK+11WNC
         dK4ES4hO08YoaSJRpbYErS2mius0zBJVnwg7zreQcidFvlv+fDa578hu0SAIvbZt1OxI
         PLqAfPADxkVx2s4gRWVjLYf9hBHiPOpuMV5Yuobm4Lid8gUxLWGn/7sXn3ABDfHmk1yM
         V/mDBpNvkZSoBvbBjyvnwV/QHTHEHjeCeZp4KhuFcvLzGaW+GWLOkAC/gvf9DfpzbqXM
         DcSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787571061; x=1788175861;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KBcF3v6N3cNbIQQxRfkuaUX8wTPsyQxH9smMZXqQRa0=;
        b=VJmqT8Drzq0zPkkBtr9a2vpg344Nzbynk3Exd/rUDvq6LheyTeVH839sufPV1u9X4k
         VkZyZvS75Y2M6tbPn/kucc+Nt/WrWsMAqJWTEh+vwWZbwXnTD/I5Td60oKTyiKeaJ3gd
         HuZBsq4YZdj8yrDr96Cp70uZ8u6lLvTx+JfULvjcXUjN1OpSToZo0Evq3AbC6GL+qsLS
         BxBNFr2fsQ7TCzZcC3ZIg6akZsM41CQYxxlS0CDynYgSo5VMXsQZiWlfv0ujH8kIod8A
         xBXjJvhC5iyAlB1f6mkXjpfl+SExwDssaqU5+AkkUIsmjeJ7yHe51Au6AlkbtiwULF6L
         T9/w==
X-Forwarded-Encrypted: i=1; AHgh+RosSr0qOabUeHWQzblD5Hq9Q4IWZuCLFf2tP5YagVOm/o1/IgsBZxIkFkCEtY9t/kh5PmaY6oLxV7R2aS09lg==@lists.infradead.org
X-Gm-Message-State: AFuF++kFTGTrNBDZvPfPZo11XKGMbf2NUlEvFTW9GCzwiNfOcuXd3Oi1
	kDp3aL/B8qgOUYXQ0/kLf437KBqROz0xPMGk9t3Xkae/A3LaI5NGTX8lcw1kDXlDUKmBgC4UF0a
	JezNT4WiMDJTXmtQfJzB/Y/DQ53JcCxE+bbtp9//TQaGKkRq8gYTZbiovbugfG1csl0xEO/SQPT
	Y=
X-Gm-Gg: AR+sD10lK/1VVidH/GgZqEDJyFs+5kLbfDCq+jIJSY0R9HLm4KixSlYOKYdt19qMllN
	iLUW7Y5BKbpKqDNNu3qKw57VfIzbsdWVlirJ6rHVP6PqhD6SuP8mgQMar5/YhxesDxAI9CQxidG
	qEtJ6ZsJwK3DxxlOOPW2Esw1B6835SfdFQXR76gzG5zfIy4FBDeaN7h5O9RR6Ja/BNuGcG+hFjo
	Cci+TF09f/FKHiX1eKRbQ5T/ULt4vPLdksytansGVVrcrxWEu2PPIvwLCjEee6UPdt/f4xi0HeS
	BokiUv/YN6nD/Vq5wSDDoaNgmlOIq/9knlo1SlKx27SYN0wmSMYf0/KvS5MsLPXwAUzdAAfkrHX
	Mtc7yOyHxHb55yuA=
X-Received: by 2002:a05:622a:258e:b0:52d:9c11:8937 with SMTP id d75a77b69052e-52df5a07b1cmr265826641cf.26.1787571061036;
        Mon, 24 Aug 2026 04:31:01 -0700 (PDT)
X-Received: by 2002:a05:622a:258e:b0:52d:9c11:8937 with SMTP id d75a77b69052e-52df5a07b1cmr265825181cf.26.1787571060355;
        Mon, 24 Aug 2026 04:31:00 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.240])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2496738e7esm1342817666b.46.2026.08.24.04.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:30:59 -0700 (PDT)
Date: Mon, 24 Aug 2026 14:30:56 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
        will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
        p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com,
        royalnet026@gmail.com, u.kleine-koenig@baylibre.com,
        chaoyi.chen@rock-chips.com, diederik@cknow-tech.com,
        alchark@flipper.net, dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 09/13] pmdomain/rockchip: cycle optional power-domain
 resets on power-on
Message-ID: <ry7vprhcjccrjyujmmpf4jgzjblhm744yborbnldvamj35h3wg@auo3ajz55com>
References: <f1805c2bce56c89d8ace35f67c665b24bab90965.1787568944.git.gahing@gahingwoo.com>
 <213e3746a36f821798d3fd3e5d832d89dcf2ddff.1787568944.git.gahing@gahingwoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <213e3746a36f821798d3fd3e5d832d89dcf2ddff.1787568944.git.gahing@gahingwoo.com>
X-Authority-Analysis: v=2.4 cv=Cfg4Irrl c=1 sm=1 tr=0 ts=6a8c2b76 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=wUpz7uCjLrEXi01cjX+DLw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=9GNsruGHAAAA:8 a=EUspDBNiAAAA:8 a=u6E1p9BJNrHIpMXxc0cA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX6FDQ9NNSgQAS
 uS6exELYTpmCbezYjUdcOP8J+kS+rIsXbZtzhqn9qzAwddahVFrUSFyqI0erEhOySp+Dmsj5Buj
 IWrdvbn5fUsO/HE6retG3YoU/bTwAdo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfXxGXtMAmiVxjP
 enmA6JkEW5xhIG6tcIZf9KpG8aBtcYXBEhB+uWQ11N2+U19kfBR4bj8EQnDFswzC2ecYBWF2hDW
 7KkIqW3/3hn1K4rszf7+4PSfnz7U3K0p5zv0OUHMR9sH0wPTbLbiE6tUR1NyMYtNX3V+YM+qlvH
 b7fbp/u6carMwsaQHfQrd9zQMoVSBfuS+rFE+EHMr+f/PfQRiwKyWdrGIjSg37W/54D+kvcU3r2
 xmNmllz7cXbeh4x/1eKzLApkdBtIcYTqWVT2JcWRNAycNPx2ZV/K1AqL0L+1l0Wq84cSwF2TvO8
 uAWjmkVGzF5QOJHw3GX/VSNvhEZScshF9bxkWfn0zxG/D3sa8BkYSmhhkHyr0/XTLUSQcRpbbTK
 /b5J9158mE7PBuXgYD1SezI38e5li9q+qui8fgkRn5GCUo7yNci1kM4dith9mIURLG5OwO1hcnT
 MnI5WdMMLtupRFjtwdA==
X-Proofpoint-ORIG-GUID: Tw8InHAuWRXBKQ9UpiCVq7JeSUhIBNFq
X-Proofpoint-GUID: Tw8InHAuWRXBKQ9UpiCVq7JeSUhIBNFq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_043106_336700_BBE2C241 
X-CRM114-Status: GOOD (  11.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26-08-24 23:08:58, Jiaxing Hu wrote:
> Some Rockchip domains come out of power-on with their bus interface in
> an undefined state. On the RK3576 NPU this shows up as a hang on the
> first register access after the domain is switched on, and pulsing the
> domain's resets at this point clears it.
> 
> Take the domain node's resets if it has any, and pulse them between
> releasing idle and restoring QoS. The resets are optional, so domains
> that do not list any are unaffected.
> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
