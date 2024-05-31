Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03F64C25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 17:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw+As0BH5FEGxlmE6rYQS9GEwNmaZ8F0jvS+NQjNZAI=; b=fBCdbXRll1TTNE
	BE0VZPdUze270RvMALUoG8fSvHCSc8qLjejiy2m4IuX9p31f5H+ngzzdsQ+8iFyc99xU4ZvTIMBJJ
	A2R04IIaD8WmVzjz+i+tLeYzjBcunMhACzsx1aZzcww663NjsDVR7Ipozgg1q36YTeFEihXFDuAfx
	0Bo3d0CZjkgyQ64KF/CM0NzGtxGd5sWRrrBx1oUnIyZBSj6ZduRqkLog6+HElCsWNd/2KF2WW6pnu
	Pt3eZUViWWKgHdgBoyM/NjmOR39l21qhQf49ZiHn9fCLuuyNP8mCPCdl2LrsFjIzLj7TLyeVXFp05
	8AC5d7g+NnZy170LQwVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD6KV-0000000B2kF-0z3T;
	Fri, 31 May 2024 17:46:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD6KS-0000000B2jm-3j1S
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 17:46:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44V9eD7k015957;
	Fri, 31 May 2024 17:46:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zDggzVShflqQw+bpQBvpfshxpqbJqcejeDnhzjwPzK8=; b=MP9wjwLioEOXZgKb
	ep9UN9V7rvQdz4tILrb0vIlIXAMLDefc9rSQkSAGZFopK9aYr6NQBclJVCqHtyVt
	wz+Rtkg6vXlVnzHQcFGmzjm84KdegD+9+bqf+kdl7V5hBAF58OdOlCM8THIFP+Ws
	jVjS87vTnvDDLj+j/aJ3OdjrUUu6sJngQs85pMwH3fFCfvx6iRYxqeO/i7yWhWax
	k4z5VQds9M7q2nLd66GcJJ6k5vifis9z2MoidIzF9cbK1N43Hp0RfVdk7cxTIzEE
	j0Y3H/C8cB33pP58alr2WH14SgfSJMSzJBTNgP6A/H9oO6cB++ohUgfU7S53OWkz
	6VWh4g==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yf23stk49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 17:46:05 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44VHk1iE004296
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 17:46:01 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 31 May
 2024 10:46:00 -0700
Message-ID: <871ef640-c5fe-69d5-2b15-286db6845dc8@quicinc.com>
Date: Fri, 31 May 2024 11:46:00 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        "Sam
 Ravnborg" <sam@ravnborg.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
 <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
 <6kmhrxip4xb44bspptwdaoqsod5gm7ccr27fn3jr4ouh4jszi4@fuxht25n5wki>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <6kmhrxip4xb44bspptwdaoqsod5gm7ccr27fn3jr4ouh4jszi4@fuxht25n5wki>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: durUuZ7aWnVn__pqXTtLIFPO6Bca352L
X-Proofpoint-GUID: durUuZ7aWnVn__pqXTtLIFPO6Bca352L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_12,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2405310133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_104612_972910_1D4624B8 
X-CRM114-Status: GOOD (  18.02  )
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

On 5/31/2024 11:43 AM, Dmitry Baryshkov wrote:
> On Fri, May 31, 2024 at 10:18:07AM -0600, Jeffrey Hugo wrote:
>> On 5/30/2024 5:12 PM, Dmitry Baryshkov wrote:
>>> There are two ways to describe an eDP panel in device tree. The
>>> recommended way is to add a device on the AUX bus, ideally using the
>>> edp-panel compatible. The legacy way is to define a top-level platform
>>> device for the panel.
>>>
>>> Document that adding support for eDP panels in a legacy way is strongly
>>> discouraged (if not forbidden at all).
>>>
>>> While we are at it, also drop legacy compatible strings and bindings for
>>> five panels. These compatible strings were never used by a DT file
>>> present in Linux kernel and most likely were never used with the
>>> upstream Linux kernel.
>>>
>>> The following compatibles were never used by the devices supported by
>>> the upstream kernel and are a subject to possible removal:
>>>
>>> - lg,lp097qx1-spa1
>>> - samsung,lsn122dl01-c01
>>> - sharp,ld-d5116z01b
>>
>> Ok to drop the sharp one I added.  It should be able to be handled by the
>> (newish) edp-panel, but I think the TI bridge driver needs some work for the
>> specific platform (no I2C connection) to verify.
> 
> Thanks. I'm tempted to merge the series as is now and drop
> sharp,ld-d5116z01b once you can confirm that it can be handled by
> edp-panel on your platform.
> 

Sounds good to me.

-Jeff

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
