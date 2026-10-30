Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79D4606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 14:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rPYXVk3q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=DCeeaCFI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=LxKvrjr0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2IfyxhDJbgrG2h8uMkDL1wEmMmxsz5j3nBbAFrDbReU=; b=rPYXVk3qWY71lL36GLGlVs4+eE
	yy0F+i6h8lntjVeotSqe/5MJXGjScWXNbQttWN/8wPDNRSxsi9DIDYMxlYNdhI3BRo6DQ/b2hWg8M
	1Iix7VD/dpkJUFPEk6rbwxhleDbS6RN6iWKJqhBtU+9wJdw2kyP258EUHIp4uz5w0gHcnLUiMIt/H
	ZBHU0KZtrV0PjfjxaBe9WXFZ4K/rsncMIytY4PFZvwROsgfTpyChhPgunW3SQYEUS4QFOL875PbKp
	7SE+/vJvpV+ObB0GpHIBG79Db5+XgCMQuhq0CeF6DUVNanE/yUpWSditniik17auxANUaRvuVrxds
	GCDW0Duw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnZJ-0000000BrVy-2vdW;
	Fri, 30 Oct 2026 14:26:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnZH-0000000BrV8-2IVc
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 14:26:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UDnCxi3468758
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 14:26:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0eWLrpt3G7XvH05+iqFKnT92AV6rz1MCjuRdpdKGeUQ=; b=DCeeaCFIyfTgBGCE
	VrKDaL/o5zAiqilZKMzWNepzRLy0Ntx+36ld4Y6UcQxW30rZQ3tZqqTl3wIkRrzl
	bS7Mw2TT7cjBqqeswY7Tum/ERLdJ8i+J3ze2hwBqIi9f63hBbFe/yO5XdjupoLtR
	+YCNPoI+MspCwd4yDgkmfSGky9mkRlRdx43BRlGlM1Mobv5ueMVwp9l7iZbpwPCl
	6xyzA1vpY0BKLjMcZx7XKJ8HAOc0qHHUjhlr9jiAVK+v59LgRi3TX+ShE0zQWKHs
	x1kpLW9XddjkYRrzAK1bG/1cWi9Dt48JJek27KzKa5jE7S3cyqZZwVYACsjVRFTT
	lGBvGg==
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com [74.125.224.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qkeat-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 14:26:54 +0000 (GMT)
Received: by mail-yx1-f69.google.com with SMTP id 956f58d0204a3-679b648598bso1236125d50.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 07:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793370413; x=1793975213; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0eWLrpt3G7XvH05+iqFKnT92AV6rz1MCjuRdpdKGeUQ=;
        b=LxKvrjr0+7g07dL81FLTDlB8p9X/NFtnD+VB8VdAVuquQ0lrzdAQUgSlTOhs21iYZY
         NuqYObeX42B7FspFmwRRAdlSxhH5DPaTjiGs09Pn0sR35R+3kYByAcwGpMoVzxmqsUsP
         oZb71trsrLVZv4heLoBncizlocjnJjotYUrxIXtejAJ1PuWBJy0K5l4L3DFWazmhJauh
         /wf3puhTEXYSUYuQc0Nwl0EkyZOqAAC6/4MxjTmAaWbp3/ZojtvmIkHlL4ZB8569PK/L
         01bl8e2iOIP4aA3lzsM5W3hsT9eXwm5EHEtTPj+blhP1dhWuix6kNYrlx6d3DY2zlyYw
         zqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793370413; x=1793975213;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0eWLrpt3G7XvH05+iqFKnT92AV6rz1MCjuRdpdKGeUQ=;
        b=0I1mVkOixjGnEFMffOtj9LzNomgeMyxtULcboKfEDBfegnMyHWq0PILM6bh5YFHVmx
         n6Z+/73zIh81NhOoX1Cd8LG8JE5zdxByvb2X2ajIjrqGBnxEsDGfA391y3hb6rXJLJ7w
         HPlHuAtj1G35S0e1sxsKMcgcOlU+bkK3Y+xWvNtfEgDVaDcDQ0/umTmF03R1/s/S2fAs
         vxzzPIBT4huojd3pyeL2H79R/14dOJFpEo0rxyBHMLXsVKW2q5yPODsEUImLyq2AYgS5
         JBjTaT1MM+G8ows064ZhgjaIr3kfkfc58rh8gTsMyTz4LX6i0tg5bHvoAJxufTRT6n00
         EBFw==
X-Forwarded-Encrypted: i=1; AKwUvBxv1A7RAll2FrkDnsNAcW1y3rQXgC8xA8RzN7GImiOz5HF10DNFjE8VrH33pydc/zYJLUoGe6CTcL/OsaHJ9A==@lists.infradead.org
X-Gm-Message-State: AFq9FYKvDSIP8tqbHsYTy4C0JMBzEm5NLaNn2Tblq7ZP7S0mjbnYc6Y4
	ZxtncQNWHZOZc9sbBa57JM2H8gHzBnaqH7R5vNNyax9w6kZCd0pX2RT78X4poiFDMiJTGic3J5U
	SD/kStq4RGgjAKOWwescblHCAW/loZPYu0T8Bpm7Gy8uHQutLug/lkw3aAnLDQG0UzTZQFW8Qtx
	4=
X-Gm-Gg: AYBFou1TqTnUMyNYGMH/QLme+Zy1xNKrNPni2T79CzXoybbWTikvC21Q39h1Ljq4BjQ
	LZh69ChY7mqC0FlXjNl/WfhbSmTpr/6dE+3uUngF7yFI1EDHYMT8UVbJpjJ6LBESPeIzum9Jz0V
	fBypmV2HnQhpAGQ+HNId2dXB6dFhMdDReDSEaHVmcK5/LRYlsVZDayBrSeYwC3uxb38E7+3Tg4Q
	JIGG1TRGsU5g8IAcp0vzBd61yjZQyhnPE1oNwxyZglC1sjQmPQgfzKvrU8x8dQ3X0agvGiAjm63
	Wb2AX3iniEHxDKDbjxwfdn71oonZmgMS1ye0vf+N2ILQZpinykQKbsc4T2ps4nUTfAhfHDMydZM
	sCjMj0E4x1v1ounCiYY5LqCDIdU6x3C0cKBG0zyPD6FBfqHpkSsAu1FX36VOZ1OE1/rmd3s2eZa
	32w8B99nWX16rmVi1veN0WmNSrM4vGwEJHJm4=
X-Received: by 2002:a53:b193:0:b0:675:6228:2fdd with SMTP id 956f58d0204a3-67ba4c90dddmr1391843d50.4.1793370413222;
        Fri, 30 Oct 2026 07:26:53 -0700 (PDT)
X-Received: by 2002:a53:b193:0:b0:675:6228:2fdd with SMTP id 956f58d0204a3-67ba4c90dddmr1391821d50.4.1793370412652;
        Fri, 30 Oct 2026 07:26:52 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:7fbe:151a:486d:a2cc? ([2a05:6e02:1041:c10:7fbe:151a:486d:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b8c6e9sm3456455f8f.43.2026.10.30.07.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 07:26:39 -0700 (PDT)
Message-ID: <6b1a831d-299e-43fd-83cb-74a64f844d03@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 15:26:36 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] powercap: Add generic zone hierarchy creation
 helpers
To: Lukasz Luba <lukasz.luba@arm.com>, rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
 <78abd10309b51ffdc3304997376d58e55b29487c.1793288783.git.daniel.lezcano@oss.qualcomm.com>
 <dc1d68fc-e4fd-4cce-9444-acc8031d5ba0@arm.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <dc1d68fc-e4fd-4cce-9444-acc8031d5ba0@arm.com>
X-Proofpoint-ORIG-GUID: 5mJVJMFlb7Z7picSBxKLVVtAIg1GI0vh
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1NyBTYWx0ZWRfXySXVNotlaEO1
 JqhoBrFEQKclmxywNJjR/4dvDTHXZOdBWBy6P9qoL+W1E3sIVXqHQiSRyU27kpV4j2Fo8PcI8QM
 0qby4hCdWw9UYkIuNdtOEZso0hwMlbQ=
X-Authority-Analysis: v=2.4 cv=DfSCOftW c=1 sm=1 tr=0 ts=6ae4a92e cx=c_pps
 a=J+5FMm3BkXb42VdG8aMU9w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8 a=jVzW49EHFVz-FHsPnZwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Epx66wHExT0cjJnnR-oj:22 a=FO4_E8m0qiDe52t0p3_H:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: 5mJVJMFlb7Z7picSBxKLVVtAIg1GI0vh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1NyBTYWx0ZWRfX0+uCuIyqRQDS
 2cJZEebaH/XV+cuOAE/CivLcfp+hEPlsyY/Y3ciks2Dwi661nKzP7rKSK8/ZVPtv+Gu722pBBzk
 xubMaSavIHVOmS6Bxx3ma5MHTKEvmzwZj0/Hi9UWCMvna4jMTaaI9LGY17F7AV+2x/K/ts3pOGC
 fYEY4udNo/BD6wqOXH4Yu05UMGQa/K6p6ztstBhrl/vVyVDq4ZM+g8cwb04LWjBqrBaXBpOV0E+
 +7gCpqnAMIAP08tqszsuHJ2tLK45HMVAK+sIdmgpmYYzi7iFP/itE7YhF2Cj6sD1kY4JiqzYI76
 +fQaBTq8ny0Wd/b7sUJIqD++VrXYhIOFBqiUq5JgrBCanwYw2bntgq1pp8avPqXk5urUvbDL5V4
 iobzNMTJ52scJGq/wwPwggYD1XdTAyXcwI+3yJY82esMNjXZEDwsb6bJuar1N6n9UnN0bDMq4Vt
 DxtU5obNqKitWPHappA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_072655_703596_B2994EA2 
X-CRM114-Status: GOOD (  14.39  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkhpIEx1a2FzeiwKCnRoYW5rcyBmb3IgdGhlIHJldmlldwoKCk9uIDEwLzMwLzI2IDE1OjAyLCBM
dWthc3ogTHViYSB3cm90ZToKPiAKPiAKPiBPbiAxMC8yOS8yNiAxNjo1NiwgRGFuaWVsIExlemNh
bm8gd3JvdGU6Cj4+IFBvd2VyY2FwIGNvbnRyb2xsZXJzIG1heSBuZWVkIHRvIGNyZWF0ZSBzZXZl
cmFsIHBvd2VyY2FwIHpvbmVzIG9yZ2FuaXplZAo+PiBhcyBhIGhpZXJhcmNoeS4gQXQgcHJlc2Vu
dCwgZWFjaCBjb250cm9sbGVyIGhhcyB0byBvcGVuLWNvZGUgdGhlCj4+IGhpZXJhcmNoeSB0cmF2
ZXJzYWwsIHBhcmVudCBsb29rdXAsIGVycm9yIHJvbGxiYWNrIGFuZCByZXZlcnNlLW9yZGVyCj4+
IGRlc3RydWN0aW9uLgo+Pgo+PiBJbnRyb2R1Y2Ugc3RydWN0IHBvd2VyY2FwX2hpZXJhcmNoeSB0
byBkZXNjcmliZSBhIHBvd2VyY2FwCj4+IGhpZXJhcmNoeS4gRWFjaCBub2RlIGNvbnRhaW5zIGl0
cyBuYW1lLCBwYXJlbnQsIGJhY2tlbmQtc3BlY2lmaWMgZGF0YQo+PiBhbmQgdGhlIHBvd2VyY2Fw
IHpvbmUgY3JlYXRlZCBmb3IgaXQuCj4gCj4gW3NuaXBdCj4gCj4+Cj4+IENjOiBNYW5hZiBNZWV0
aGFsYXZhbGFwcHUgUGFsbGlrdW5oaSA8bWFuYWYucGFsbGlrdW5oaUBvc3MucXVhbGNvbW0uY29t
Pgo+PiBMaW5rOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA4MDYxMTAxNTkuNjk2OTAt
Mi0gCj4+IGRhbmllbC5sZXpjYW5vQG9zcy5xdWFsY29tbS5jb20KPj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+
PiBDaGFuZ2VzIGluIHY0IChzaW5jZSB2Myk6Cj4+IC0gUmViYXNlIG9uIHY3LjM7IG5vIGNvZGUg
b3IgY29tbWl0LWRlc2NyaXB0aW9uIGNoYW5nZXMuCj4+Cj4+IENoYW5nZXMgaW4gdjMgKHNpbmNl
IHYyKToKPj4gLSBSZWJhc2Ugb24gdjcuMy1yYzcuCj4+IC0gQWRkIGEgc3RhdGljIGluaXRpYWxp
emVyIGFuZCBjbGFyaWZ5IGhpZXJhcmNoeSBvd25lcnNoaXAgYW5kIGxvY2tpbmcuCj4+IC0gQ2hl
Y2sgZm9yIGV4aXN0aW5nIHpvbmVzIGFuZCB2YWxpZGF0ZSBuYW1lcyBhbmQgcGFyZW50IG9yZGVy
aW5nIGJlZm9yZQo+PiDCoMKgIGNyZWF0aW9uOyB1c2Ugem9uZSBmb3IgdGhlIHJ1bnRpbWUgcG9p
bnRlciBtZW1iZXIuCj4+IC0gQWxsb3cgTlVMTCBjYWxsYmFjayByZXN1bHRzIHRvIHNraXAgYnJh
bmNoZXM7IGtlZXAgZXJyb3JzIGZhdGFsLgo+PiAtIFVzZSBleHBsaWNpdCBsb2NraW5nIGFuZCBh
IHNpZ25lZCByZXZlcnNlLWxvb3AgaW5kZXguCj4+IC0gRXhwbGFpbiB0aGUgY29udHJvbGxlciBj
YWxsYmFja3MsIHRoZWlyIGFyZ3VtZW50cyBhbmQgdGhlaXIgCj4+IHJlbGF0aW9uc2hpcAo+PiDC
oMKgIHRvIHpvbmUgb3BlcmF0aW9uczsgdXBkYXRlIHRoZSBkZXNjcmlwdGlvbi4KPj4KPj4gwqAg
ZHJpdmVycy9wb3dlcmNhcC9wb3dlcmNhcF9zeXMuYyB8IDIwNCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4+IMKgIGluY2x1ZGUvbGludXgvcG93ZXJjYXAuaMKgwqDCoMKgwqDCoMKg
IHwgMjA1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+IMKgIDIgZmlsZXMgY2hh
bmdlZCwgNDA5IGluc2VydGlvbnMoKykKPj4KPiBSZXZpZXdlZC1ieTogTHVrYXN6IEx1YmEgPGx1
a2Fzei5sdWJhQGFybS5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
