Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05417C982EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 12:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ru+eiea85ughvaMeKpnE/pQ92PcNoETZW223VL6vxOk=; b=B4loGqs21TE2JI
	uT8Qn65YTvNafNKNCL/uRktBDpvvB2bPq8kiICTXMVO6PAgMA5bqueJtOc1n82u3Kmz1h2B1PCe5G
	JNpvpo1jfVBkuxosShvWP/noJIkXbnywfSMb2FYzKOp/VrSp9QFX1d83z9U4V2HVZ3AF2dT5IYw8I
	f0eIXObmsqmrxsjF3lSOp+e46cw/Im6UZtqGa48fZ86zdUUYepsRs0DCOB+oiwykPoBDB0uAaB7Cd
	76zdDeGr3kohH4Zkvn8nAGWNKOpZaE2AEwu4DdAnG6dtUSkgkL4gc5x80xOEJ1HowpfgIm+NJteW6
	Jva5ygizk3NYUMqEBPDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8dPc-000000028BF-2hMZ;
	Mon, 21 Sep 2026 12:46:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8dPa-0000000289p-129S
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 12:46:23 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAdmF6227824
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 12:46:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IGEBVkSl804Lbjet5Iqv9xkjaomkmKa7knvOOohRepM=; b=FDV/uRKtPIY5Te0O
	/bQLtP7WCvqplyZdNh/yoW+2tP/GxJRj2pu/B6Bsl0tycX9TtwpAkZ2N0+iOYQKl
	JoIpLSfJsY+e7FBiFpYhQMo6g3XgQhIwE1nJh3JJb9MfQWsyWEC67O1f35xHuyZX
	z9qj1VvujtNw6wroAqLSizpGFKgzMfc5UYFj9zFzgjqJMMEnIgx1EYa5V6PwjB2a
	eidrXvUd6D9+bsRQYXBngget4ljibpHdqFk+dqh8Azy7g4c/vHo0NXQIrO3go1Ax
	kN0Go5GB7uylS/SACc7SzmeISBCOdGJhbq82oCS0UvZ4gOSftSsIEswUdfChrIa7
	CyqGeQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu17grxpm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 12:46:21 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc11b5dd54dso11216a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 05:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789994781; cv=none;
        d=google.com; s=arc-20260327;
        b=cHc36guW1zp6GvSnNGfgRqx5klW3mCHmo7ssx6ZNbXPcLi7yikSyBPThD60oQuR1p7
         Yx7Z4uXClR7sW4QRDwGQ4rnnKm+Pjd/AREOpI7yzMvvlvh5iZ13nECjNQqySWbvrOOdg
         rimHhhS4p5U2y8WCOEwlEsUN+z8HinPI0Wrz+futAXTDKSrELGHY8STQ1MmLIsHP53U4
         UtX0GZJtlT9dueu9GvRmd4z5JOCK9Hqw3fcQ/8IrM650WCbPK9It+XZlhMWD4vvx28od
         p5g+anPMx2iws7o+VYzOUapWOQZ/fVDRxhLMN6Ewnrd2A0k8HzAeQqJ4PkzSqggLQR5M
         UUig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IGEBVkSl804Lbjet5Iqv9xkjaomkmKa7knvOOohRepM=;
        fh=j7vwjjTyIZodkRDeunG6rdqpMlrYLY1fzPiegcdlVX4=;
        b=cBZxeFHPJmLaHWg6rlZnIeBzmBbWa9rRZAIWEWoGiy3uLUFMPek73v8Xk1mQgNAUZw
         TfgQMKdZoZ1V5UpXw5iN6eheq8iaWuOBYxDQNzMGLbJo5J5jVYaYTtbMYncFY7T7yUPh
         a4Wsram/J49KQ5X7519IcEOhKgkOvUmC/YMdszFLLxcyliyxvTY7+QdQC57bzkrEXY8Q
         24OE921Iy33ImqCw2R/TppBx45nfE/sNy9cjWGkOV5yI949oNVXjZ+zpXQimvuzoZJFC
         g0pGMUt8rbEXnc5FmcsA8Cplv3N0O9v+VC00omgqSrHdgPYwNjfuoEZnCjWrfWW4sBvh
         OPcQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789994781; x=1790599581; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IGEBVkSl804Lbjet5Iqv9xkjaomkmKa7knvOOohRepM=;
        b=TUcxpohZ+SUUygd9mvEZDiRK3GC0fHMqXydlOUhlOSK8Owtahbr/dZXWbOVuUZsYuh
         rQc/P0wO6Jhm0jFPWewwxmU38ictuEZi91dRBPTAcQIGaVSBaNSYBlaQqq9i7lKBu40s
         8aNtvWv+dmzbOn3GV156d6ddmGuPbXObTePNEw5QXDphe+hl43m0hVJJmh1/NkA8CcYG
         xjI+oOCWy/H3XAiwdH7KxuJ2t8+8YicOwOjMdZYiD+Xg4DUEdxdBNHNEOGiiICKk3+mb
         8ZS1/svNZ/7GTdHreFmU9WoDd/odQ+aSWz+RSfEHZ9JeBxPk6IoW13sbwQJDnasrfpFk
         dfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789994781; x=1790599581;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IGEBVkSl804Lbjet5Iqv9xkjaomkmKa7knvOOohRepM=;
        b=hyL9Qiyh8LDTlH2ljYk8rjLp5yqT36sLLE52+HH+OsB/hLYF7mUh43kdc8YjLmYYUK
         rL56cdwJJYQMi7/d9lqqqSpmM36xvM0CR4AFPz5QfXELQIyrlYxqKb0bmQ9zry2D9miW
         YRMNS776ANEZemTZIhZ0loQFE2d/y1kOSsj84ynkCNtV/4jVu+vzhUtcNVcp0SZ8yNCw
         7rrzxKk/K2amavZGrYT0OhNW2/4u0OFkpw6MC3wnFVva2YlRo+z/T5yZ+byz7/xK6qK1
         wLL8CZLti/tZMrYOVwrDyL1EGJR2ZXiRK4s0mTGdVX969T4J22QA9RiU10m+MvHFGquA
         DVfA==
X-Forwarded-Encrypted: i=1; AKwUvBwdT0/MUGBcdrbfNblLgrhd1DG5BJykCERb8/Ysc+A2u+CxcrQfbbTzdfcjCw+6APwN5AHmWKvOgmv22YAiMw==@lists.infradead.org
X-Gm-Message-State: AFuF++k4A2IC5hsY5rk01zbFtxJyb9ceFZTnWoeSSEUc1Sdp6Ci62g73
	4IqEMtqZlX1WQe1/5VccJoez07DlDVMxZhPf5ZrPnuURjTPyrveazoGZQgV0CwPYRgTq+6T+Nmv
	Lj80siGP6W09EzGeY4ZxRPNmd4zlkIC9zrUDs4RHa9X1PHelKLR4awIYTTKesTFyseNjL8eDms+
	sGc1LyUSNW4MpJYX7zdTuzGiCg0Nniwa73Q6KsgfnkgXAugqtC2Q==
X-Gm-Gg: AYBFou1xYk8Lfy4byerXCozR00Nweao1QXSg5jN9vx6ewxstPkmlaCxDgskiC50lUyt
	SH5gkWEwCT4VlaAQ84L5GteOfDql5dzgyW1yqi2EVQZGFSg2dRUrIXP5/AaERvmrYU/N8d86+WS
	PbcrYIR9ShC/e8r40+KGvbGUVDv3C4CYTecqiZ1NeaA5bBKNqA3yKETiGl/A==
X-Received: by 2002:a05:6a21:6f87:b0:3dd:a197:edea with SMTP id adf61e73a8af0-3dda197f85emr11235064637.57.1789994780990;
        Mon, 21 Sep 2026 05:46:20 -0700 (PDT)
X-Received: by 2002:a05:6a21:6f87:b0:3dd:a197:edea with SMTP id
 adf61e73a8af0-3dda197f85emr11235017637.57.1789994780421; Mon, 21 Sep 2026
 05:46:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260915104328.45901-1-gahing@gahingwoo.com>
In-Reply-To: <20260915104328.45901-1-gahing@gahingwoo.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 14:46:07 +0200
X-Gm-Features: AcwNN1X9mUUfG00OJyVIt6nOyuDWy2ZSHbWKT6BOlwyDwHXMMZbGC4tmToAM-O4
Message-ID: <CAPx+jO8EixqfXmrD8zkMkJe_B+2AATo=YNFJraAdE_O9X4KM-w@mail.gmail.com>
Subject: Re: [PATCH v13 00/14] accel/rocket: RK3576 NPU (RKNN) enablement
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
        will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
        p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com,
        royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
        sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
        u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
        diederik@cknow-tech.com, alchark@flipper.net,
        dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        iommu@lists.linux.dev, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-GUID: UPzCn5w_SmEs4e1lNaOjX2C-rpSz33fH
X-Authority-Analysis: v=2.4 cv=IewSymqa c=1 sm=1 tr=0 ts=6ab1271d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=9GNsruGHAAAA:8 a=uuLM8HNXhctW1a4qv2gA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE4NSBTYWx0ZWRfX8luc+4MGVtk/
 kwx1+UkZMTQv5IGjCFmTmSATpZ4BufSdA+rrJjYxfreP11TVNqzR2p45HEWEC28ZG4+ikB2cxkQ
 f+Gp6RyQOB6zz2dtH5dT7ha82WoIJbT3uYCN8zzTGAttTF/xHKGTMil50qWnxYze9PiCT3nqOwe
 6Xk1JEMIOyUgO83bjIv2Za5ojuE90toBHDkE0iV7GtVZFUlePuybgKSBDyLWn3YG7Rc8QkDQoyG
 +PiQIhszTIfCPcMJr1o+yz/HYJQ4A/m0KKG5p/ZB+Y06SMGCOR6CrScuH3fsiLfrmS+proZ5kvk
 qd6RU3f2OHo1B1Phkk2aiZWvCI2agNdN1+s2nV4f2tF1m94DZ6Qs5HUUCsvGDv3LHm4nrPNnsKl
 hHf19XMVNHvIhI4rvRdKUgNP0B4In4wDr/h8ZP881hPVJg+0NXG7MGwJIUnWOAsE6vPiFrWnNuX
 t2BYxIxi+Z79EiQbreg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE4NSBTYWx0ZWRfX9npGakmRKQ9z
 G1hHQptL9gcm/XmBaOG6N54Lrq/VWzuedoErlTwz8+9Q/hKH/JgQs4kGpkwufjOBrT5p/etQfSK
 UqrRxaAnrqYhELMSEdwc9JBfFNjxyy0=
X-Proofpoint-ORIG-GUID: UPzCn5w_SmEs4e1lNaOjX2C-rpSz33fH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_054622_293572_493615B8 
X-CRM114-Status: GOOD (  17.89  )
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMTI6NDPigK9QTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2Fo
aW5nd29vLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGFkZHMgdGhlIFJLMzU3NiBOUFUgdG8gYWNjZWwv
cm9ja2V0LCB3aGljaCB0b2RheSBzdXBwb3J0cyBSSzM1ODgKPiBvbmx5LiBUaGUgUkszNTc2IGNh
cnJpZXMgdHdvIGNvcmVzIG9mIHRoZSBzYW1lIFJLTk4gYmxvY2ssIHdpcmVkIHVwCj4gZGlmZmVy
ZW50bHkuIFR3byBleHRyYSBjb252b2x1dGlvbiBidWZmZXIgY2xvY2tzLCB0d28gcG93ZXIgZG9t
YWlucyBwZXIKPiBjb3JlLCBvbmUgcmVzZXQgd2hlcmUgdGhlIFJLMzU4OCBoYXMgdHdvLCBubyBO
UFUgU1JBTSByYWlsLCBhbmQgYQo+IFBDX1RBU0tfQ09OIHRoYXQgcGFja3MgdGhlIHRhc2sgbnVt
YmVyIGludG8gc2l4dGVlbiBiaXRzLCBub3QgdHdlbHZlLgo+CgpbLi4uXQoKPiBJZ29yIFBhdW5v
dmljICgxKToKPiAgIGFjY2VsL3JvY2tldDogcmVxdWVzdCB0aGUgY29yZSBjbG9ja3MgYnkgbmFt
ZQo+Cj4gSmlheGluZyBIdSAoMTMpOgo+ICAgYWNjZWwvcm9ja2V0OiB0YWtlIHRoZSBjb21wbGV0
aW9uIHJlZ2lzdGVyIHdyaXRlcyB1bmRlciBqb2JfbG9jawo+ICAgYWNjZWwvcm9ja2V0OiB3YWl0
IGZvciBhIHJ1bm5pbmcgSVJRIGhhbmRsZXIgYmVmb3JlIHJlc2V0dGluZyBhIGNvcmUKPiAgIGFj
Y2VsL3JvY2tldDogbGV0IHRoZSBjb3JlIHN1c3BlbmQgYWZ0ZXIgYSByZXNldAo+ICAgYWNjZWwv
cm9ja2V0OiBmYWN0b3IgdGhlIGNvbXBsZXRpb24gdGFpbCBvdXQgb2YgdGhlIElSUSBoYW5kbGVy
Cj4gICBkdC1iaW5kaW5nczogbnB1OiByb2NrY2hpcDogYWRkIHJvY2tjaGlwLHJrMzU3Ni1ya25u
LWNvcmUKPiAgIGR0LWJpbmRpbmdzOiBwb3dlcjogcm9ja2NoaXA6IGFsbG93IHJlc2V0cyBpbiBh
IHBvd2VyIGRvbWFpbiBub2RlCj4gICBkdC1iaW5kaW5nczogaW9tbXU6IHJvY2tjaGlwOiBkZXNj
cmliZSB0aGUgUkszNTc2IE5QVSBNTVUKPiAgIHBtZG9tYWluOiByb2NrY2hpcDogYWRkIG9wdGlv
bmFsIHBlci1kb21haW4gcG93ZXItb24gc2V0dGxlIGRlbGF5Cj4gICBwbWRvbWFpbjogcm9ja2No
aXA6IGN5Y2xlIG9wdGlvbmFsIHBvd2VyLWRvbWFpbiByZXNldHMgb24gcG93ZXItb24KPiAgIGFj
Y2VsL3JvY2tldDogc2VsZWN0IHRoZSBwZXItY29yZSBjbG9jayBhbmQgcmVzZXQgY291bnRzIGZy
b20gbWF0Y2gKPiAgICAgZGF0YQo+ICAgYWNjZWwvcm9ja2V0OiBhZGQgUkszNTc2IE5QVSAoUktO
Tikgc3VwcG9ydAo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBOUFUgKFJLTk4pIG5vZGVz
IHRvIHJrMzU3Ngo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGVuYWJsZSB0aGUgTlBVIG9uIHJr
MzU3Ni1yb2NrLTRkCj4KPiAgLi4uL2JpbmRpbmdzL2lvbW11L3JvY2tjaGlwLGlvbW11LnlhbWwg
ICAgICAgIHwgIDI4ICsrKysKPiAgLi4uL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlh
bWwgICAgICAgIHwgIDQ3ICsrKysrLQo+ICAuLi4vcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJv
bGxlci55YW1sICAgICAgfCAgIDggKwo+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LXJv
Y2stNGQuZHRzICAgICAgfCAgMjIgKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTc2LmR0c2kgICAgICB8ICA4NiArKysrKysrKystCj4gIGRyaXZlcnMvYWNjZWwvcm9ja2V0
L3JvY2tldF9jb3JlLmMgICAgICAgICAgICB8ICAzMiArKystCj4gIGRyaXZlcnMvYWNjZWwvcm9j
a2V0L3JvY2tldF9jb3JlLmggICAgICAgICAgICB8ICAxMSArLQo+ICBkcml2ZXJzL2FjY2VsL3Jv
Y2tldC9yb2NrZXRfZGV2aWNlLmMgICAgICAgICAgfCAgIDcgKy0KPiAgZHJpdmVycy9hY2NlbC9y
b2NrZXQvcm9ja2V0X2Rydi5jICAgICAgICAgICAgIHwgIDQyICsrKystCj4gIGRyaXZlcnMvYWNj
ZWwvcm9ja2V0L3JvY2tldF9kcnYuaCAgICAgICAgICAgICB8ICAgMiArCj4gIGRyaXZlcnMvYWNj
ZWwvcm9ja2V0L3JvY2tldF9qb2IuYyAgICAgICAgICAgICB8IDE1MSArKysrKysrKysrKysrKyst
LS0KPiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgICAgICAgIHwgIDgz
ICsrKysrKystLS0KPiAgMTIgZmlsZXMgY2hhbmdlZCwgNDU2IGluc2VydGlvbnMoKyksIDYzIGRl
bGV0aW9ucygtKQo+Cj4KPiBiYXNlLWNvbW1pdDogMWExZGU1NGY3MzY5Y2QyYjViYWMwZjI2NTkx
MGU2MGFkM2E2YjRjMwo+IC0tCj4gMi40My4wCj4KCkkgYXNzdW1lIGl0J3MgZmluZSBmb3IgbWUg
dG8gcGljayB1cCBwYXRjaDcsIDkgYW5kIDEwIGZyb20gdGhpcyBzZXJpZXMKYW5kIGZ1bm5lbCB0
aGVtIHZpYSBteSBwbWRvbWFpbiB0cmVlLiBJZiBub3QsIHBsZWFzZSBsZXQgbWUga25vdyEKCktp
bmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
