Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E2BC83F1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 16:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtd6prJVyc0oCXztfbm0cGkRKh256Ynyi2NzOaEZJC4=; b=WXOYnJvaDmmDDK
	eCUT0QmKjg+U689nV6nSXMIBuqUMyySuKjL6rupjjHOI2xy0S3hb2eX6WWYdNFK9/5GFhhc30ewaL
	uWRJajV0ouUh3UkXkxJt17FE9UQfYsKFkwY5R1wf526YD66wvxnaf3nQMJ5EEfZgXEXaLwgzXah7f
	/IQpUWl2N4r2VYBhNvLFNrQ1Zc+R0sRclMv1AcnsuI9/kaIEAxCZeTsIXLLgsCnCAxWfz3ke3zX7t
	1+cD8Rz6OBeFY6RHuSgWWCWD/vl4Gum7Fls7AnkVy9u4gLi0EfuN9MqZ/ijx1taLfO46ANFJ+95+q
	/BxQOe47bRM8RAeFcpUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtnv-00000000FXW-2IUl;
	Mon, 21 Jul 2025 16:55:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udsoW-000000007YA-0ecl
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Jul 2025 15:52:29 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56L9q4N9016321
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 15:52:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k1To2TtXrWvL7KDLUWwYZS+zt9S2lZ7nkcx7wxlUsgc=; b=UMR0HOfNvnMdl+Uc
	aUIUBqSvnw1RGmMDEBnY1JMRFTTxP2Z9qQLJyzDWK4t5Kh5ui6nVH9DZ9+SpWFQy
	r/S6xJKg1zJX7bCyCDTK68JxtdLP5pDkuNlvassiqkz5i5Nt/8Yc0dv1uFajWqjQ
	A5BPK6oCteGYiU0ELJO+agf/aE7m+aOB8xUnfDwZtpujON3yWq1Q+NeLtIS6uqwj
	7h0o2bzvXjRqlxMI3pNeEq9zFbI88TD0eAAfuAaKlZ5czEO7YvlIC182a/mdDfo1
	8+FNROe3LNH4TYC6m4vakJgFruUpowdEe/tghuEB8pSuz8IvFtywIuaKQvjsBUFS
	RUxaPQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048rx2j8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 15:52:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2382607509fso30508805ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Jul 2025 08:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753113146; x=1753717946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k1To2TtXrWvL7KDLUWwYZS+zt9S2lZ7nkcx7wxlUsgc=;
        b=FJkZ+VDEgS2AI7sw6B6VXPc+y3Xt1T2B86m667V195jvh0L69Nq8082KA5hMPfwF0z
         BiNjmssJ0K/1RQJVzfEPsHNah0mZBnSvB4dICrfBWiSbM3ITG6XykwWDxHKen3dlCdTc
         uF143swm5MM5ogVPPxJ8ZiH4N04DYHLwrS6+NdoZWzbFA3s6icQa0pAjLl6YMo7nuTap
         JnuCcrcKBSDb/yj9p5RoGD4SFtUszYFBLZO/XIC+nQs0MpADFPZeISmi0xt1lyD9wA3L
         tkVYP7GC5MnLm8PPrLA/ebpDMHXZQ8wbZhPu7ryw7XewlFtzEGh3bWWVkWqL0pVa3gKe
         U9/A==
X-Forwarded-Encrypted: i=1; AJvYcCVgliIWnkIwYqtPORDgJsJwcIO+QU0D9bqFktH6RhrHkXyDc5tahwYT2CnAPkbcJLguGP9ogBSSEys8eBfVAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxG8zMep4Z1trnxCbSroZ33Lkgu34kjZvSZ+SnMnxQh/dillp+n
	6ZUcbgsNnUDTHiXy3lNU/PbCBiSikUzKjwZ5Nogv0Kt9nrKq6WhSwPWVo0KgS/Z94t8COFXM8b8
	SjEiNkHHValDBYT4Jb5UHA7aL0Ch4wtJCTmrvoC3+dlN5EGdAa2fczYMw+Oa5WATVjeOzf4r9Ae
	4=
X-Gm-Gg: ASbGncvf7dIiOeUKCehFekx/znSiv8FEL2Ci9Yv0ynjeGh16uGX7kQsW2RPhQE8+HKn
	YdCqN/1dYd+GqNBGBybOYBnIxAjlHGH0BkYoc5DEQMCIasbqIl8raFKX4wpb/0ulo1i1d21ZjDt
	CamnZC1pzvk1o4IfvEp6ECHw/+aA4Q9r/pvvAjgNI7uqJ1FZlmvd6KVHN87IKqJpRhAExdxa+ZK
	rKPXkho8UIkynLeO0GyV5NHhjtxTo20jl0GKCqdjBrHiBeE8kop9HFa1E/NsqFRfDIZBMNsiX6f
	64VB6UKLu8jHcerQXZL/sRglmS/Ofr29UNpgieFTbwnZdkFdTp0hrXQc9RcKZRpcUw4VXS9spvL
	SUqObtJ01C5stOA==
X-Received: by 2002:a17:903:11c5:b0:23e:1b99:2a71 with SMTP id d9443c01a7336-23e24f59902mr290415645ad.39.1753113145688;
        Mon, 21 Jul 2025 08:52:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPCwCxq1QkhMyEoe34Z12143edz1TUZnWOSk/9IkmrEyBMoiqaPExRfBVgfEPrzhXVmpdjcQ==
X-Received: by 2002:a17:903:11c5:b0:23e:1b99:2a71 with SMTP id d9443c01a7336-23e24f59902mr290415145ad.39.1753113145178;
        Mon, 21 Jul 2025 08:52:25 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6d2a8dsm60084815ad.165.2025.07.21.08.52.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 08:52:24 -0700 (PDT)
Message-ID: <7649e4ff-c712-4db4-8777-f96bc4de97c4@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 09:52:20 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
        Robert Foss <rfoss@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
 <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
 <4109088.mvXUDI8C0e@diego>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <4109088.mvXUDI8C0e@diego>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE0MSBTYWx0ZWRfX1irg0b/6yZ9q
 0g+HoCoqJ9ytJWTLMCfKpoNWrij7N3S8Uixh4HMrnp+zmPno5LpZhfT+NVl2p7yLwqWKcqyA/iR
 ZAD9aADYKHksMGPTfvn8wltoPvAFgIfP0kx6RPfF3NeIwHhblsSHOe0PJZj2b8T7YCgwf9659qy
 f4OetD9b/IL4mbEAVjKLVoCmdXhTNOrbYSTKjs7aboVmE0tp7etocGN5QnFzHmzl8xU3eMc8akS
 Olck95oh8jOtWhzZJiQfiEq5bLM8nQS5Q0J5B89DltINGke/8ltng+ja0i/tMy1DndVM9vd7ucu
 ChunkXIaUsBtM80g6K5O5p1rCu4oBD9thHT49pqX1rGtXw7fysL9s5OQP4sUGj0kfIpC+D4gWoH
 Bvs0vcitq9Lql/eENN6oVIqvEQ6rufa9AXCdZFIggEmjjjh+N9hiPmsC1SPemChTZuWrsE9/
X-Proofpoint-ORIG-GUID: IzSfIEvBaDJAkpzhWp06uN4lhwLA7p_e
X-Proofpoint-GUID: IzSfIEvBaDJAkpzhWp06uN4lhwLA7p_e
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687e623b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=e5mUnYsNAAAA:8 a=DISFzqtZAAAA:8
 a=eRn_eXbfG_JMZ2bVrUwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=Vxmtnl_E_bksehYqCbjh:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_085228_326885_226334D6 
X-CRM114-Status: GOOD (  15.57  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNy8yMS8yMDI1IDk6MjQgQU0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIEplZmYsCj4g
Cj4gQW0gTW9udGFnLCAyMS4gSnVsaSAyMDI1LCAxNjo1NTowMSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEplZmYgSHVnbzoKPj4gT24gNy8yMS8yMDI1IDM6MTcgQU0sIFRv
bWV1IFZpem9zbyB3cm90ZToKPj4+IFRoaXMgc2VyaWVzIGFkZHMgYSBuZXcgZHJpdmVyIGZvciB0
aGUgTlBVIHRoYXQgUm9ja2NoaXAgaW5jbHVkZXMgaW4gaXRzCj4+PiBuZXdlciBTb0NzLCBkZXZl
bG9wZWQgYnkgdGhlbSBvbiB0aGUgTlZETEEgYmFzZS4KPj4+Cj4+PiBJbiBpdHMgY3VycmVudCBm
b3JtLCBpdCBzdXBwb3J0cyB0aGUgc3BlY2lmaWMgTlBVIGluIHRoZSBSSzM1ODggU29DLgo+Pj4K
Pj4+IFRoZSB1c2Vyc3BhY2UgZHJpdmVyIGlzIHBhcnQgb2YgTWVzYSBhbmQgYW4gaW5pdGlhbCBk
cmFmdCBjYW4gYmUgZm91bmQgYXQ6Cj4+Pgo+Pj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL21lc2EvbWVzYS8tL21lcmdlX3JlcXVlc3RzLzI5Njk4Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4+Cj4+IFRoaXMgKGFuZCB0
aGUgdXNlcnNwYWNlIGNvbXBvbmVudCkgYXBwZWFyIHJlYWR5IGZvciBtZXJnZSBmcm9tIHdoYXQg
SQo+PiBjYW4gdGVsbC4gVG9tZXUgaXMgc3RpbGwgd29ya2luZyBvbiBoaXMgZHJtLW1pc2MgYWNj
ZXNzIHNvIEkndmUgb2ZmZXJlZAo+PiB0byBtZXJnZSBvbiBoaXMgYmVoYWxmLiBQbGFubmluZyBv
biB3YWl0aW5nIHVudGlsIEZyaWRheSBmb3IgYW55IGZpbmFsCj4+IGZlZWRiYWNrIHRvIGNvbWUg
aW4gYmVmb3JlIGRvaW5nIHNvLgo+IAo+IHNvdW5kcyBncmVhdC4KPiAKPiBKdXN0IHRvIG1ha2Ug
c3VyZSwgeW91J3JlIHBsYW5uaW5nIHRvIG1lcmdlIHBhdGNoZXMgMS02IChkcml2ZXIgKyBiaW5k
aW5nKQo+IGludG8gZHJtLW1pc2MgYW5kIEknbGwgcGljayB1cCB0aGUgImFybTY0OiBkdHM6ICIg
cGF0Y2hlcyA3LTEwIGFmdGVyd2FyZHM/CgpUaGF0IHdvcmtzIGZvciBtZS4gSSdsbCBwbGFuIG9u
IG1lcmdpbmcgMS02IGFuZCBsZWF2aW5nIDctMTAgZm9yIHlvdS4KCi1KZWZmCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
