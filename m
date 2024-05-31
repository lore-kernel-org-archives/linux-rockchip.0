Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1417C25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 16:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEmcX0JM20tCh2hUCya9o56eepkzyK0I3FXfF+7o4v4=; b=mgfhP7fgdRQL/W
	vr9RGakAO5EcPuPXHATKsUP8+8i3YjGE8Z9Q6lvAC+D43NTH7qypBRphD5IMtTsDZmsTtNhUMMux4
	6sYRRTJ/Fu1vsGPAj1yuFQhdiVsLPu9xhZ2IME18xZpqZH1VQDBbue0KNGs+qn6v9iUU/E4gHcC10
	N31sOEk0//8nAOeL3r5SJSDOMc8ZqHGR9PFg9IY2vt0xD6u3v8awUucSf/Y3PgxntE3w//GTN2rX6
	Ueyf58yBNqgOzIkS9teCeeGNaKjU5YetqBmHOj3iozznDK4vZqsQiyVjzUVmPiN6zBFZWITIpzViL
	K28I+TQdsqGiA+mtJA2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4xj-0000000AoWJ-3lpe;
	Fri, 31 May 2024 16:18:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4xZ-0000000AoUC-3CgH
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 16:18:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44VBU6U8003487;
	Fri, 31 May 2024 16:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sIzFseeuuSm8HDVz4Niia26WaDuHcYXYVvYEjMLmYRo=; b=llSl65jgBGSzOihl
	TE+3umfmpofxGgqxapf1wsjiZLdCQYiTKbobCUT8RM32lXueZ9vxKrX0aXUA5W5P
	iwrexnFIFBkLoCsYBMo9r94haIMbqdX8X9XMW4WjPq+fIyo+oZwUcWsq7v89Vk2t
	zhZOhLt1AtqF3Ku6fRhqP5BQbfEQOQJO627rtH7fDbQT2iTcVQ2VSth6cC8NpOf0
	kRxVh4NQfg+Z1BtIpz890Zh8lO9OSoyud8QJ89//bFWoc6DpeyVe/jQypDexiN0J
	Cz7v5/U8xWYBEqSrOZPifBF1Zof7sp8YGECw222ouNrdERSUsqYlzRGCYoCXMRzi
	dOPgHA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yesw5kee4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 16:18:10 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44VGI8Kw013354
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 16:18:09 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 31 May
 2024 09:18:07 -0700
Message-ID: <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
Date: Fri, 31 May 2024 10:18:07 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Douglas Anderson
	<dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        "Jessica
 Zhang" <quic_jesszhan@quicinc.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: KDqy62VT-sUlJKS5paT22JNBEFfhfxT7
X-Proofpoint-GUID: KDqy62VT-sUlJKS5paT22JNBEFfhfxT7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_12,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1011 spamscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2405310122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_091829_976242_6BC42867 
X-CRM114-Status: GOOD (  18.50  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/30/2024 5:12 PM, Dmitry Baryshkov wrote:
> There are two ways to describe an eDP panel in device tree. The
> recommended way is to add a device on the AUX bus, ideally using the
> edp-panel compatible. The legacy way is to define a top-level platform
> device for the panel.
> 
> Document that adding support for eDP panels in a legacy way is strongly
> discouraged (if not forbidden at all).
> 
> While we are at it, also drop legacy compatible strings and bindings for
> five panels. These compatible strings were never used by a DT file
> present in Linux kernel and most likely were never used with the
> upstream Linux kernel.
> 
> The following compatibles were never used by the devices supported by
> the upstream kernel and are a subject to possible removal:
> 
> - lg,lp097qx1-spa1
> - samsung,lsn122dl01-c01
> - sharp,ld-d5116z01b

Ok to drop the sharp one I added.  It should be able to be handled by 
the (newish) edp-panel, but I think the TI bridge driver needs some work 
for the specific platform (no I2C connection) to verify.

-Jeff

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
