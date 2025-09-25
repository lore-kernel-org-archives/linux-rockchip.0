Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AFC6CAC5B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+x7xw2/c6QABXZKrzzaYABrHMZ5CkDowJODhoFRlbO4=; b=BVxaiSYBwZbDy6
	XHcjI/Hj729e/egdpFEbmOnQJVhF0y/0IWH3a5+vb6AsX+HBQz2WlgHL34DkcSrcrGGVSEDsPK39L
	Ai9SJwZYzkL64ggCGbtCg+ZqcQXAJgA8lY/I0qkalDArqrtfe9dITDRm0OYqgHDVGJprV+9CtCSOM
	bRLkqTQgZZ6sT2PaRqzSs7jsGxnLcFIT761hkdYq/nqHtKL54uWR2EXqF+pmXH7DVE4SOyiprQ8DQ
	nZDmJFwhvRASGyesgRano9nyHur0aGSuub+K3hrcIowPraTfevaLVgiv1t8eOz2aqUw7t/P2KM+sh
	e/Ipi3+QWeJIXx7JKovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1nNO-0000000AJbG-4493;
	Thu, 25 Sep 2025 14:55:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1nNN-0000000AJYw-0HGd
	for linux-rockchip@bombadil.infradead.org;
	Thu, 25 Sep 2025 14:55:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UCKLHPclZ92VqQVzO2ihLAAMvehhf/ZUsH5t+sSqD3E=; b=StoGNNno0Ka8HWO50sRM/lKZhg
	iLHGo/04NgrhKYgjQMEOmpNIiCKoO3gfTvFoWF0lwf2MC2diDJvVikZWfFEFU8J/bh43Kkrv5D2BA
	ZQVZf033JstSaz5aKYMKTV3g0D1ht6C8eisAKnEtTkAviBDdAVTBb8hTOIlMy2jc5BbqJ+vjeOpIX
	s1iS67x+Wmk4DjLICKyMVoNpB155FLF0YxFXxIlEBb77LGmf2dfFLGtXJ1GR+8POlHnAABcGumwdn
	a8txvmJ0Y4P+4hm/T+3Yo2ET+Uw64G0Voif/EUichgD1hpT90t44PRkWpnu0+thIBwlNroQRq14zj
	+gOmdvgw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1nNJ-00000009Hrb-45cO
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 14:55:15 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P90E33027782
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 14:55:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UCKLHPclZ92VqQVzO2ihLAAMvehhf/ZUsH5t+sSqD3E=; b=SMkLq9Wewvn6bGnz
	U6J7wYFE1wJkqpjahkh1SHMxuKKtZ/CX0Um8belckqxAZWqAiF3rrkmvbE3uzYYx
	4ZFsp3seTfAf6Vhz2DeIXiAA5j7kehb06ztPgyixJyk3J61J2ZtBELgE3zrBIV1B
	+BwHNiJscVYUc0aWDDmlVzdnT/I7WeNvcb9MbBxbG6+oWbk5z8gq1XPyGSsbiw5J
	GjvheJ9P4XTtsk4TqAdu0uzJG/rBGjkfB+3qovsYXU/np0EidbIgU3IqRbpmaWrA
	oc1g0MRUlchQSjOwmn8SsjQZk5WDZg50wlJhQaWDvwFpYhnLJFTJ9FjSXkD8BsZy
	TZ0azQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmp0vbg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 14:55:11 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d374dd29d1so26579871cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 07:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758812110; x=1759416910;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCKLHPclZ92VqQVzO2ihLAAMvehhf/ZUsH5t+sSqD3E=;
        b=L0XlW/i6i05Y7zhaciMoFQ6mEKeaUgXO8vhr3OKViZph3XmyhR082c3SeGyKVdXrSm
         OKIIYlv3DpOGtX/xWS70M1tM9Jzm8BkQYKvlDv5otD9PzjSO3ZhKLBNPK0Kzq50e7ccc
         9dO98Xw6glduUSLDGGWKO8xT49Ky1ktd6lp+6fVussU0Y2E4rEio/GcnB1jaXg9nKKvc
         Rm6p6QkhPkDfYzKKSnJrTXXNib9sMGNZXS9SSxCVMXgrX0NFm6FC6pXVsQRFDU/QZOQF
         fSuq5WwiAqw0kyyUVYbnUSuvDMwtK+GCMTsO6KjPRUjq6UCIHmWVLghoreB1Qva3k9+B
         A6PA==
X-Forwarded-Encrypted: i=1; AJvYcCWeBcBc489a8kCC0W7mFbpyxhlivMdYWR5/3gFHFWqLnSaN9YgTJjUUTXRgmR1Osy5+c/SGl1QNQDc4XNZMQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzpt2MOS8AiaTomqsxycVv1MUkYaKMe1oSox7I7pGcgTlJavZG0
	Lou/a6xwLTLzgrE5XusZZtDWqD8/Cqsy6hRS67o9nWDho5iRogdvO6mrkMQJRYA3Fm2hpectIQq
	TC1ljG/yksFn+JQVJ2CLHuxN7YYtI3E/JvXhAI5fHX/8JUxeckuC6TIJMd7tK2tphLBpaeDOd6l
	4=
X-Gm-Gg: ASbGncuOGH9oP51xpkOiXOSxOaanRflQ+0S+p9bnM5SKV1QRBA+Iymd6hQyNCBJ34xE
	DBcvLr1NCiYWdnJNdQg2KhCc0jG92oE44u6sJPG5zzT+3L4+xQ44O3taScjwBTGEB13BiTPO5ZK
	WcSU+f+hzXMofSXkODnIPI95JMAmkR1X9W2p47j9y6aaqfJa7sohVvMr8ETod0d4VD83o9z4zCp
	O9VPIDUunKTAlaFkkQbcw5Yz+Fvnp9FnsdEI0bRP555ev54qGupnIaR9OdZ6L/jxRnvHXKAV4yi
	JsD7GH5Pg/esAqxTh5xZEJm8dtO8URC0aDUS2R2QOFey2rhYQ6THgZRN6DaxQJ5ZDnH9OtDWuaS
	4fVT4EDo0uyQzSOd4n9esJHtnSWP2JrtMh9RMfIpF4X79cTwwHrvT
X-Received: by 2002:a05:622a:2c4:b0:4ca:d221:7f47 with SMTP id d75a77b69052e-4da481d5671mr49733761cf.20.1758812110028;
        Thu, 25 Sep 2025 07:55:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZICDfrSZTRJ2GaxTMZc5seKL08CVV0TR7RmaHg0ybBZh1gfpRHIOxkw8Z+UaKEDm6GC1Ahw==
X-Received: by 2002:a05:622a:2c4:b0:4ca:d221:7f47 with SMTP id d75a77b69052e-4da481d5671mr49732751cf.20.1758812109007;
        Thu, 25 Sep 2025 07:55:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc02c1sm853387e87.60.2025.09.25.07.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 07:55:08 -0700 (PDT)
Date: Thu, 25 Sep 2025 17:55:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH v4 01/10] drm/connector: let drivers declare infoframes
 as unsupported
Message-ID: <jfxtcvh4l5kzyv74llmzz3bbt6m4mhzhhwl6lh5kfeqgqhkrhi@jzfvtxpedmyf>
References: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
 <20250909-drm-limit-infoframes-v4-1-53fd0a65a4a2@oss.qualcomm.com>
 <20250910-furry-singing-axolotl-9aceac@houat>
 <z333ysst5ifakomo35jtbpydj44epqwwn4da76rcnsq4are62m@32gsmgx2pcdi>
 <20250925-didactic-spiked-lobster-fefabe@penduick>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925-didactic-spiked-lobster-fefabe@penduick>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d557cf cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=jixIfWMKhexVEAdDGxYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: iwzUcEMuoAW1e8J2Vxu6aVXQwWnPtR-Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXw8jUr0llDzzq
 pUVX4pxGpop7AD5HHVK9PZe1GM/slT76GOUjYo+1hTVYoHFXod+TaabkNYqti0FoNVkXa+G1X6v
 vYmuhyBz3KSiASkYgOYd9+rczWyB5rjEiCOHUdK9noAIuCztWiOfM5nP8T8O4TZa5FjzdmWLY7A
 wC0RRbxSAaaawD2vKKSGtCTGY7uJlcledxhqZx8TBm/rVFf/+uaVcmWYzsJYcPMQNIQS4WYBWvB
 H4I47vTiCHG0uONMY/RLf7X8m7HBybAfjLA+HaNNbzmoN/mLy4W29GAJXRExsGDRC6PTr/ytOEC
 dN8TkO/IomEu6d23XYXcwGZTHVT+fzpqPS45m+uKITNxqC2bEmCOMkzxVow4FxRySgOyYb3h+z5
 bIxDvESm
X-Proofpoint-GUID: iwzUcEMuoAW1e8J2Vxu6aVXQwWnPtR-Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_155514_405430_2438E2AB 
X-CRM114-Status: GOOD (  68.04  )
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

T24gVGh1LCBTZXAgMjUsIDIwMjUgYXQgMDI6MzY6NDZQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBXZWQsIFNlcCAxMCwgMjAyNSBhdCAwNjoxNjoyNVBNICswMzAwLCBEbWl0cnkg
QmFyeXNoa292IHdyb3RlOgo+ID4gT24gV2VkLCBTZXAgMTAsIDIwMjUgYXQgMDE6MDM6NDdQTSAr
MDIwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+ID4gT24gVHVlLCBTZXAgMDksIDIwMjUgYXQg
MDU6NTE6NTlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+ID4gPiBDdXJyZW50
bHkgRFJNIGZyYW1ld29yayBleHBlY3RzIHRoYXQgdGhlIEhETUkgY29ubmVjdG9yIGRyaXZlciBz
dXBwb3J0cwo+ID4gPiA+IGFsbCBpbmZvZnJhbWUgdHlwZXM6IGl0IGdlbmVyYXRlcyB0aGUgZGF0
YSBhcyByZXF1aXJlZCBhbmQgY2FsbHMgaW50bwo+ID4gPiA+IHRoZSBkcml2ZXIgdG8gcHJvZ3Jh
bSBhbGwgb2YgdGhlbSwgbGV0dGluZyB0aGUgZHJpdmVyIHRvIHNvZnQtZmFpbCBpZgo+ID4gPiA+
IHRoZSBpbmZvZnJhbWUgaXMgdW5zdXBwb3J0ZWQuIFRoaXMgaGFzIGEgbWFqb3IgZHJhd2JhY2sg
b24gdXNlcnNwYWNlCj4gPiA+ID4gQVBJOiB0aGUgZnJhbWV3b3JrIGFsc28gcmVnaXN0ZXJzIGRl
YnVnZnMgZmlsZXMgZm9yIGFsbCBJbmZvZnJhbWUgdHlwZXMsCj4gPiA+ID4gcG9zc2libHkgc3Vy
cHJpc2luZyB0aGUgdXNlcnMgd2hlbiBpbmZvZnJhbWUgaXMgdmlzaWJsZSBpbiB0aGUgZGVidWdm
cwo+ID4gPiA+IGZpbGUsIGJ1dCBpdCBpcyBub3QgdmlzaWJsZSBvbiB0aGUgd2lyZS4gRHJpdmVy
cyBhcmUgYWxzbyBleHBlY3RlZCB0bwo+ID4gPiA+IHJldHVybiBzdWNjZXNzIGV2ZW4gZm9yIHVu
c3VwcG90ZWQgSW5mb0ZyYW1lIHR5cGVzLgo+ID4gPiA+IAo+ID4gPiA+IExldCBkcml2ZXJzIGRl
Y2xhcmUgdGhhdCB0aGV5IHN1cHBvcnQgb25seSBhIHN1YnNldCBvZiBpbmZvZnJhbWVzLAo+ID4g
PiA+IGNyZWF0aW5nIGEgbW9yZSBjb25zaXN0ZW50IGludGVyZmFjZS4gTWFrZSB0aGUgYWZmZWN0
ZWQgZHJpdmVycyByZXR1cm4KPiA+ID4gPiAtRU9QTk9UU1VQUCBpZiB0aGV5IGFyZSBhc2tlZCB0
byBwcm9ncmFtIChvciBjbGVhcikgSW5mb0ZyYW1lcyB3aGljaCBhcmUKPiA+ID4gPiBub3Qgc3Vw
cG9ydGVkLgo+ID4gPiA+IAo+ID4gPiA+IEFja2VkLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBu
eHAuY29tPgo+ID4gPiA+IEFja2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3Jh
LmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFy
eXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+IAo+ID4gPiBBZ2FpbiwgSSBzdGlsbCBiZWxp
ZXZlIHRoYXQgaXQncyBhIGJhZCBpZGVhLCBnb2VzIGFnYWluc3Qgd2hhdCB0aGUgc3BlYwo+ID4g
PiBzdGF0ZXMsIGFuZCB0aGUgZnJhbWV3b3JrIHdhcyBtZWFudCB0byBiZS4KPiA+IAo+ID4gUGxl
YXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nLiBUaGUgc3BlY3MgKEhETUkgJiBDRUEpIGRlZmlu
ZSBzZXZlcmFsCj4gPiBpbmZvZnJhbWVzIGFuZCB3aGV0aGVyIHdlIHNob3VsZCBiZSBzZW5kaW5n
IHRoZW0uIElmIEknbSByZWFkaW5nIGl0Cj4gPiBjb3JyZWN0cmx5LCBDRUEgc3BlYyBleHBsaWNp
dGx5IHNheXMgJ0lmIHRoZSBTb3VyY2Ugc3VwcG9ydHMgdGhlCj4gPiB0cmFuc21pc3Npb24gb2Yg
W2Zvb10gSW5mb0ZyYW1lLi4uIiAoNi40IC0gQVZJLCA2LjYgLSBBdWRpbywgNi43IE1QRUcsCj4g
PiA2LjkgLSBEUk0pLiBGb3Igb3RoZXIgSW5mb0ZyYW1lcyAoNi41IFNQRCwgNi44IE5UU0MgVkJJ
KSBpdCBqdXN0IGRlZmluZXMKPiA+IHRoYXQgc2VuZGluZyB0aG9zZSBmcmFtZXMgaXMgb3B0aW9u
YWwuCj4gCj4gU1BEIGlzIGluZGVlZCBvcHRpb25hbCwgYnV0IHRoZSBIRE1JIHNwZWMsIChIRE1J
IDEuNGIsIFNlY3Rpb24gOC4yLjEgLQo+IEF1eGlsaWFyeSBWaWRlbyBpbmZvcm1hdGlvbiAoQVZJ
KSBJbmZvRnJhbWUpIHN0YXRlcyB0aGF0Ogo+IAo+ICAgQSBTb3VyY2Ugc2hhbGwgYWx3YXlzIHRy
YW5zbWl0IGFuIEFWSSBJbmZvRnJhbWUgYXQgbGVhc3Qgb25jZSBwZXIgdHdvCj4gICBWaWRlbyBG
aWVsZHMgaWYgdGhlIFNvdXJjZToKPiAKPiAgICAqIGlzIGV2ZXIgY2FwYWJsZSBvZiB0cmFuc21p
dHRpbmcgYW4gQVZJIEluZm9GcmFtZSBvciwKPiAgICAqIGlzIGV2ZXIgY2FwYWJsZSBvZiB0cmFu
c21pdHRpbmcgWUNCQ1IgcGl4ZWwgZW5jb2Rpbmcgb3IsCj4gICAgKiBpcyBldmVyIGNhcGFibGUg
b2YgdHJhbnNtaXR0aW5nIGFueSBjb2xvcmltZXRyeSBvdGhlciB0aGFuIHRoZQo+ICAgICAgdHJh
bnNtaXR0ZWQgdmlkZW8gZm9ybWF04oCZcyBkZWZhdWx0IGNvbG9yaW1ldHJ5IG9yLAo+ICAgICog
aXMgZXZlciBjYXBhYmxlIG9mIHRyYW5zbWl0dGluZyBhbnkgeHZZQ0Mgb3IgZnV0dXJlIGVuaGFu
Y2VkCj4gICAgICBjb2xvcmltZXRyeSBvciwKPiAgICAqIGlzIGV2ZXIgY2FwYWJsZSBvZiB0cmFu
c21pdHRpbmcgYW55IEdhbXV0IE1ldGFkYXRhIHBhY2tldCBvciwKPiAgICAqIGlzIGV2ZXIgY2Fw
YWJsZSBvZiB0cmFuc21pdHRpbmcgYW55IHZpZGVvIGZvcm1hdCB3aXRoIG11bHRpcGxlCj4gICAg
ICBhbGxvd2VkIHBpeGVsIHJlcGV0aXRpb25zIG9yLAo+ICAgICogaXMgZXZlciBjYXBhYmxlIG9m
IHRyYW5zbWl0dGluZyBDb250ZW50IFR5cGUgb3RoZXIgdGhhbiDigJxubyBkYXRh4oCdIG9yLAo+
ICAgICogaXMgZXZlciBjYXBhYmxlIG9mIHRyYW5zbWl0dGluZyBZQ0MgUXVhbnRpemF0aW9uIFJh
bmdlLgo+IAo+ICAgVGhlIEFWSSBJbmZvRnJhbWUgc2hhbGwgYmUgdHJhbnNtaXR0ZWQgZXZlbiB3
aGlsZSBzdWNoIGEgU291cmNlIGlzCj4gICB0cmFuc21pdHRpbmcgUkdCIGFuZCBub24tcGl4ZWwt
cmVwZWF0ZWQgdmlkZW8uIFdoZW4gYSBTb3VyY2UgaXMgbm90Cj4gICBleHBsaWNpdGx5IHJlcXVp
cmVkIHRvIHRyYW5zbWl0IEFWSSBJbmZvRnJhbWVzLCBpdCBpcyByZWNvbW1lbmRlZCB0aGF0Cj4g
ICB0aGUgU291cmNlIHRyYW5zbWl0IEFWSSBJbmZvRnJhbWVzLgo+IAo+IFNvIGl0J3MgcmVjb21t
ZW5kZWQgaW4gZXZlcnkgY2FzZSwgYW5kIHRoZSBsaXN0IGtpbmQgb2YgbWFrZXMgaXQKPiBtYW5k
YXRvcnkgZm9yIGhvdyBMaW51eCB1c2VzIEhETUkuCgpBZ3JlZWQuCgo+IAo+IEFsc28sIGRpZCB3
ZSBldmVyIGVuY291bnRlciBzb21lIGhhcmR3YXJlIHRoYXQgY291bGRuJ3Qgc2VuZCBBVkk/CgpO
by4KCj4gCj4gQXVkaW8gaXMgbWFuZGF0b3J5IHdoZW4gc3RyZWFtaW5nIGF1ZGlvLCBEUk0gd2hl
biB1c2luZyBIRFIsIGFuZCB3ZQo+IGRvbid0IHN1cHBvcnQgdGhlIG90aGVycyB5ZXQuCj4gCj4g
U28gdGhlIG9ubHkgd2Ugc3VwcG9ydCBidXQgZG9uJ3QgaGF2ZSB0byBzZW5kIGlzIFNQRC4KPiAK
PiA+IFdlIGNhbid0IGV2ZW4gaW5mZXIgc3VwcG9ydCBmb3IgSW5mb0ZyYW1lcyBmcm9tIHRoZSBT
b3VyY2UgZmVhdHVyZXMuCj4gPiBFLmcuIENFQSA2LjYuMSBkZWZpbmVzIGEgY2FzZSB3aGVuIGRp
Z2l0YWwgYXVkaW8gaXMgYWxsb3dlZCB0byBiZSBzZW50LAo+ID4gd2l0aG91dCBzZW5kaW5nIEF1
ZGlvIEluZm9GcmFtZS4KPiAKPiBIRE1JIDEuNCBzZWN0aW9uIDguMi4yIC0gQXVkaW8gSW5mb2Zy
YW1lIHN0YXRlcyB0aGF0Ogo+IAo+ICAgV2hlbmV2ZXIgYW4gYWN0aXZlIGF1ZGlvIHN0cmVhbSBp
cyBiZWluZyB0cmFuc21pdHRlZCwgYW4gYWNjdXJhdGUKPiAgIEF1ZGlvIEluZm9GcmFtZSBzaGFs
bCBiZSB0cmFuc21pdHRlZCBhdCBsZWFzdCBvbmNlIHBlciB0d28gVmlkZW8KPiAgIEZpZWxkcy4K
PiAKPiBJJ2Qgc2F5IGl0IHRha2VzIHByZWNlZGVuY2Ugb3ZlciBDVEEtODYxLgoKSSBzZWUsIEkg
d2FzIHJlZmVycmluZyB0byBDVEEgaW5kZWVkLiBIRE1JIHRha2VzIHByZWNlZGVuY2UuCgo+IAo+
ID4gQXMgd2Ugd2lsbCBiZSBnZXR0aW5nIG1vcmUgYW5kIG1vcmUgZmVhdHVyZXMsIHNvbWUgb2Yg
dGhlIEluZm9GcmFtZXMKPiA+IG9yIGRhdGEgcGFja2V0cyB3aWxsIGJlICdnb29kIHRvIGhhdmUs
IGJ1dCBub3QgcmVxdWlyZWQnLgo+IAo+IEFuZCBkcml2ZXJzIHdvdWxkIGJlIGZyZWUgdG8gaWdu
b3JlIHRob3NlLgo+IAo+ID4gPiBTbywgbm8sIHNvcnJ5LiBUaGF0J3Mgc3RpbGwgYSBubyBmb3Ig
bWUuIFBsZWFzZSBzdG9wIHNlbmRpbmcgdGhhdCBwYXRjaAo+ID4gCj4gPiBPb3BzIDotKQo+ID4g
Cj4gPiA+IHVubGVzcyB3ZSBoYXZlIGEgZGlzY3Vzc2lvbiBhYm91dCBpdCBhbmQgeW91IGNvbnZp
bmNlIG1lIHRoYXQgaXQncwo+ID4gPiBhY3R1YWxseSBzb21ldGhpbmcgdGhhdCB3ZSdkIG5lZWQu
Cj4gPiAKPiA+IE15IG1haW4gY29uY2VybiBpcyB0aGF0IHRoZSBkcml2ZXJzIHNob3VsZCBub3Qg
b3B0LW91dCBvZiB0aGUgZmVhdHVyZXMuCj4gPiBFLmcuIGlmIHdlIHN0YXJ0IHN1cHBvcnRpbmcg
SVNSQyBwYWNrZXRzIG9yIE1QRUcgb3IgTlRTQyBWQkkgSW5mb0ZyYW1lcwo+ID4gKHllcywgc3R1
cGlkIGV4YW1wbGVzKSwgaXQgc2hvdWxkIG5vdCBiZSByZXF1aXJlZCB0byBnbyB0aHJvdWdoIGFs
bCB0aGUKPiA+IGRyaXZlcnMsIG1ha2luZyBzdXJlIHRoYXQgdGhleSBkaXNhYmxlIHRob3NlLiBJ
bnN0ZWFkIHRoZSBEUk0gZnJhbWV3b3JrCj4gPiBzaG91bGQgYmUgYWJsZSB0byBtYWtlIGRlY2lz
aW9ucyBsaWtlOgo+ID4gCj4gPiAtIFRoZSBkcml2ZXIgc3VwcG9ydHMgU1BEIGFuZCB0aGUgVlNE
QiBkZWZpbmVzIFNQRCwgZW5hYmxlIHRoaXMKPiA+ICAgSW5mb0ZyYW1lIChCVFcsIHRoaXMgbmVl
ZHMgdG8gYmUgZG9uZSBhbnl3YXksIHdlIHNob3VsZCBub3QgYmUgc2VuZGluZwo+ID4gICBTUEQg
aWYgaXQncyBub3QgZGVmaW5lZCBpbiBWU0RCLCBpZiBJIHJlYWQgaXQgY29ycmVjdGx5KS4KPiA+
IAo+ID4gLSBUaGUgZHJpdmVyIGhpbnRzIHRoYXQgdGhlIHBpeGVsIGRhdGEgaGFzIG9ubHkgMTAg
bWVhbmluZnVsIGJpdHMgb2YKPiA+ICAgZGF0YSBwZXIgY29tcG9uZW50IChlLmcuIG91dCBvZiAx
MiBmb3IgRGVlcENvbG9yIDM2KSwgdGhlIFNpbmsgaGFzCj4gPiAgIEhGLVZTREIsIHNlbmQgSEYt
VlNJRi4KPiA+IAo+ID4gLSBUaGUgZHJpdmVyIGhhcyBlbmFibGVkIDNEIHN0ZXJlbyBtb2RlLCBi
dXQgaXQgZG9lc24ndCBkZWNsYXJlIHN1cHBvcnQKPiA+ICAgZm9yIEhGLVZTSUYuIFNlbmQgb25s
eSBIMTRiLVZTSUYuCj4gPiAKPiA+IFNpbWlsYXJseSAobm8sIEkgZG9uJ3QgaGF2ZSB0aGVzZSBv
biBteSBUT0RPIGxpc3QsIHRoZXNlIGFyZSBqdXN0Cj4gPiBleGFtcGxlcyk6Cj4gPiAtIFRoZSBk
cml2ZXIgZGVmaW5lcyBzdXBwb3J0IGZvciBOVFNDIFZCSSwgcmVnaXN0ZXIgYSBWQkkgZGV2aWNl
Lgo+ID4gCj4gPiAtIFRoZSBkcml2ZXIgZGVmaW5lcyBzdXBwb3J0IGZvciBJU1JDIHBhY2tldHMs
IHJlZ2lzdGVyIElTUkMtcmVsYXRlZAo+ID4gICBwcm9wZXJ0aWVzLgo+ID4gCj4gPiAtIFRoZSBk
cml2ZXIgZGVmaW5lcyBzdXBwb3J0IGZvciBNUEVHIFNvdXJjZSBJbmZvRnJhbWUsIHByb3ZpZGUg
YSB3YXkKPiA+ICAgZm9yIG1lZGlhIHBsYXllcnMgdG8gcmVwb3J0IGZyYW1lIHR5cGUgYW5kIGJp
dCByYXRlLgo+ID4gCj4gPiAtIFRoZSBkcml2ZXIgcHJvdmlkZXMgbGltaXRlZCBzdXBwb3J0IGZv
ciBFeHRlbmRlZCBIRFIgRE0gSW5mb0ZyYW1lcywKPiA+ICAgc2VsZWN0IHRoZSBjb3JyZWN0IGZy
YW1lIHR5cGUgYWNjb3JkaW5nIHRvIGRyaXZlciBjYXBhYmlsaXRpZXMuCj4gPiAKPiA+IFdpdGhv
dXQgdGhlICdzdXBwb3J0ZWQnIGluZm9ybWF0aW9uIHdlIHNob3VsZCBjaGFuZ2UgYXRvbWljX2No
ZWNrKCkKPiA+IGZ1bmN0aW9ucyB0byBzZXQgaW5mb2ZyYW1lLT5zZXQgdG8gZmFsc2UgZm9yIGFs
bCB1bnN1cHBvcnRlZCBJbmZvRnJhbWVzCj4gPiBfYW5kXyBnbyB0aHJvdWdoIGFsbCB0aGUgZHJp
dmVycyBhZ2FpbiBlYWNoIHRpbWUgd2UgYWRkIHN1cHBvcnQgZm9yIGEKPiA+IGZlYXR1cmUgKGUu
Zy4gYWZ0ZXIgYWRkaW5nIEhGLVZTSUYgc3VwcG9ydCkuCj4gCj4gRnJvbSB3aGF0IHlvdSBkZXNj
cmliZWQgaGVyZSwgSSB0aGluayB3ZSBzaGFyZSBhIHNpbWlsYXIgZ29hbCBhbmQgaGF2ZQo+IHNv
bWV3aGF0IHNpbWlsYXIgY29uY2VybnMgKHRoYW5rcywgYnR3LCBpdCB3YXNuJ3Qgb2J2aW91cyB0
byBtZSBiZWZvcmUpLAo+IHdlIGp1c3QgZGlzYWdyZWUgb24gdGhlIHRyYWRlLW9mZnMgYW5kIGlk
ZWFsIHNvbHV0aW9uIDopCj4gCj4gSSBhZ3JlZSB0aGF0IHdlIG5lZWQgdG8gc2FuaXR5IGNoZWNr
IHRoZSBkcml2ZXJzLCBhbmQgSSBkb24ndCB3YW50IHRvIGdvCj4gYmFjayB0byB0aGUgc2l0dWF0
aW9uIHdlIGhhZCBiZWZvcmUgd2hlcmUgZHJpdmVycyBjb3VsZCBqdXN0IGlnbm9yZQo+IGluZm9m
cmFtZXMgYW5kIHRha2UgdGhlIGVhc3kgd2F5IG91dC4KPiAKPiBJdCBzaG91bGQgYmUgaGFyZCwg
YW5kIGVhc3kgdG8gY2F0Y2ggZHVyaW5nIHJldmlldy4KPiAKPiBJIGRvbid0IHRoaW5rIGJpdGZs
YWcgYXJlIGEgc29sdXRpb24gYmVjYXVzZSwgdG8gbWUsIGl0IGtpbmQgb2YgZmFpbHMKPiBib3Ro
Lgo+IAo+IFdoYXQgaWYsIGp1c3QgbGlrZSB0aGUgZGVidWdmcyBkaXNjdXNzaW9uLCB3ZSBzcGxp
dCB3cml0ZV9pbmZvZnJhbWUgaW50bwo+IHdyaXRlX2F2aV9pbmZvZnJhbWUgKG1hbmRhdG9yeSks
IHdyaXRlX3NwZF9pbmZvZnJhbWUgKG9wdGlvbmFsKSwKPiB3cml0ZV9hdWRpb19pbmZvZnJhbWUg
KGNoZWNrZWQgYnkgZHJtX2Nvbm5lY3Rvcl9oZG1pX2F1ZGlvX2luaXQ/KSBhbmQKPiB3cml0ZV9o
ZHJfaW5mb2ZyYW1lIChjaGVja2VkIGluIGRybW1fY29ubmVjdG9yX2hkbWlfaW5pdCBpZiBtYXhf
YnBjID4gOCkKPiAKPiBIb3cgZG9lcyB0aGF0IHNvdW5kPwoKSSdkIHNheSwgSSByZWFsbHkgbGlr
ZSB0aGUgc2luZ2xlIGZ1bmN0aW9uIHRvIGJlIGNhbGxlZCBmb3Igd3JpdGluZyB0aGUKaW5mb2Zy
YW1lcy4gSXQgbWFrZXMgaXQgbXVjaCBoYXJkZXIgZm9yIGRyaXZlcnMgdG8gbWlzYmVoYXZlIG9y
IHRvIHNraXAKc29tZXRoaW5nLgoKRm9sbG93aW5nIHRoaXMgZGlzY3Vzc2lvbiwgbGV0J3MgdGFr
ZSBzbWFsbGVyIHN0ZXBzOiBtb2RpZnkgdGhlIGRyaXZlcnMKdG8gZGlzYWJsZSB1bnN1cHBvcnRl
ZCBpbmZvZnJhbWVzIGluIGF0b21pY19jaGVjaygpIGFuZCByZXR1cm4gYW4gZXJyb3IKZnJvbSB3
cml0ZS9jbGVhcl9pbmZvZnJhbWUgaWYgdGhlIHR5cGUgaXMgdW51c3Bwb3J0ZWQuIFRoZW4gSSdk
IHByb2JhYmx5Cmxpa2UgdG8gY29ycmVjdCBTUEQgaGFuZGxpbmcsIG9ubHkgc2VuZGluZyBpdCBp
ZiBpdCBpcyBzdXBwb3J0ZWQgYnkgdGhlClNpbmsuIEkgc3RpbGwgdGhpbmsgaW4gdGhlIGVuZCB3
ZSBzaG91bGQgaGF2ZSB0aGUgYml0bWFzayBmb3IKdHJ1bHktb3B0aW9uYWwgcGFja2V0cyBhbmQg
SW5mb0ZyYW1lcywgYnV0IGhhdmluZyBvbmx5IFNQRCBkb2Vzbid0CnByb3ZpZGUgZW5vdWdoIHBy
ZXNzdXJlLiBJJ2QganVzdCBsZWF2ZSB0aGUgRklYTUUgYW5kIGxldCBzb21lYm9keQp3b3JraW5n
IG9uIHRob3NlIGZlYXR1cmVzIHRvIGltcGxlbWVudCB0aGF0LiBJIGFtIHRlbXB0ZWQgdG8gaW1w
bGVtZW50CklTUkMgc3VwcG9ydCBqdXN0IGZvciB0aGUgc2FrZSBvZiBpdCwgYnV0IGl0IHByb2Jh
Ymx5IGRvZXNuJ3QgbWFrZSBhbnkKc2Vuc2UuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
