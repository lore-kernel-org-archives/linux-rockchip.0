Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC288606D82B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 14:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Pya8KTpG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TM6hIRfr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BrcRDMEE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bB2bMqGoopdTgga66WWsAsRmwrBfGt99eVjh800IDaE=; b=Pya8KTpGSp2uz3/Z1BcvatmxWm
	E22jBV2G7CKU9nY8bXIN6KWZiW16KL8m3PgxdrTpCQGEHRTyUB1Kiyg0XQc8Li3ZQFi6e1UfepDNb
	bReFzQnQTSaG0nOmYeHXfPH60bkcRyo5bDGv9UwOeIPsBtTA73P/lu1AJrcwTylL7/ENvliZ05wi9
	qNKXilVyCySYEhfSoUcHK6DlVWj4rtbEmlhDlPiOOxnZogBkbOp5DtMKGsfDJLaZHL9GbwDjLQJ7q
	sKYglOs2EQ99hKdWI/gBzWiioqDfw6r/ZOPyTxVeh8DFWt+9j2VJqB2YkQ0hzCtx0jWTCJC3R5raM
	t0NKOPEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFvj-00000002oei-3OXh;
	Tue, 03 Nov 2026 14:56:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFvg-00000002odV-03n1
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 14:56:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3E9wPb3657502
	for <linux-rockchip@lists.infradead.org>; Tue, 3 Nov 2026 14:56:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r0MLslcRaVR+y08vybby+evo8uaedpmNYYxLzSURObI=; b=TM6hIRfr+c/uxFYR
	r6BtgLVoczAGacQ6rc3UU1p7SeqBpRZrrX3XzChgqPitaKhFS+6q5NkEUiSAxohh
	a2jPBbqapF4IlC2kcoay4ioR+AQDCS67m65T52MVr9+L/tuZITO86PIzJ3/rrKrL
	Sffhp7tOvwK7k0ygGN9CCNUKRsDBdapjkMVYMteHW7KiyjGBHtB/A2UJPF8zShIc
	ulNEqStQAxKvIWUOPckSsHqReglRQXQPcA4rNtmfQoDLdwVrH3MxAJhb2yDHURGG
	eZJdq9t77ub9gsHEEBcz+1lDBXNIOq6gw+dE+P3G5/m6ELLbV0Gl48E7g32DE0nt
	Vox3CA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq94ct91r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 14:56:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f5844cb60so159694585a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 06:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793717762; x=1794322562; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=r0MLslcRaVR+y08vybby+evo8uaedpmNYYxLzSURObI=;
        b=BrcRDMEEHCj9u4nq6bjOemDzaDlPFu8DeBpxj/ZWafXEkMM258anCVq9pmYn9/xVnB
         PePoDC1tIhU0RERuvyzvYffH8RkDJt2yZGquucV8clKc6qRhOXLY1et7dAiqD8fnPT/T
         Jw3uXHU+baLyrG5CHLR1KC+JA8JP4n1ckFYEviM4iVd9I+Kq5fSfSMUGO/28rjlYhLJU
         ds4v9O0UKZy3nN8oT4m2yeyRHiDQmmEcrxF9AB0VJbOA/K9IKigKPPUYNhZLw2bISIVz
         T+699LR6X5hFmDfu7UbpHRE65izDdhqxaPVkbCjQNLG+vXCoYuQ3BM50puSyNjswFE31
         XHxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793717762; x=1794322562;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r0MLslcRaVR+y08vybby+evo8uaedpmNYYxLzSURObI=;
        b=jgPU0SdpRTPQP0cVVaXd1n1viPvCiQvj7ebEYoR140VA6e3mmmK41wiVT1Ls7Ih7TQ
         VV663QK+cIPCJSF3WdmQC9bnKA2m+R0NlNYGTwFcadLyFEQzSmylhtTuL+0I6nVfaKvp
         z27Xgyzx2xf3/RJpSrssI/h0ljAo638cpVDAuEQCBRwgFfURLqOTUSlLyEsJJT3i/3L3
         XTSJO5OY60f9LhgzFn52xYgIyKr2FQ/Na1mBm0cQnbsWHLmt0ZSCiFVPVeW6L1+t2/oP
         XNgDPlKdR0yaO9HtlwfWvYM/Cn02KWFrZ37mFBXs7QvoGXmj850L/UlS7S8dyposY3bE
         4l1g==
X-Forwarded-Encrypted: i=1; AKwUvBztFkzkrHP5OoViVPL9EAIeJ8ZNNtBQ+o4a/YNYKiX5u27OIaPKjIdQweXE3dKhuipGKNUVjTYVque2d41e2Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z8umGMdafbyHe6t5rsujb+XJax0yUGs/CBWaQhKZBeBNMzfQ7Sx
	eYlvoeVe164K5DcGMjV0xnQLsF81SDzxsAI3wdDWHTFuALzSWegJiiSHjS89w8oqJEy+edoXTcV
	gxVBW+mK7f1xX4sZlaP2VzXYlr95rIhrVJNB4nYn7FhiYcdBLDq+V0YX6ljLpcM4goFTB/ZmKnn
	4=
X-Gm-Gg: AYBFou04CYo942G2Y35oO6Imgs+6lxr0aphGp5jRDFOcmGD5wNxsOiaXp3skjDlTq8o
	fglKd6w9Xuie+P6YaVbgwAXbD4DP79ry0lHqqb2gPdsq32w+T8z3pfhSiim8r1LVB0earyFvg4+
	36t/FP1xFuqMAQGAGphwoAWDZ46JDKffhxJ9DznvmkhKTg40a+luvQR+H/JlAxkRF60rpk4Pq/I
	LcM0zlRe3MBMNWSXJJP7AkF/r8sV6DoE0O14LZm6zqZIue4LeSzxqiRIpwaYarVz9RTzxLFRl/u
	LYH2iv3QkKAA479iAwzGkTOy+SHZjJrBKgBXskPV6HVdk2LRzs6Gw0TKkxOpSUHTPADGOCc43LW
	yn6mMpVN4F0WvuJ65qbtoH6uBFEI3gG7LbdQfAXEsFHRgiHOS3PpbLHIPum9nspvsqeLRFi9jbQ
	WqJxHkgZwoMExW
X-Received: by 2002:a05:620a:7111:b0:945:af5d:287b with SMTP id af79cd13be357-945af5d28eamr1141881685a.30.1793717761918;
        Tue, 03 Nov 2026 06:56:01 -0800 (PST)
X-Received: by 2002:a05:620a:7111:b0:945:af5d:287b with SMTP id af79cd13be357-945af5d28eamr1141874385a.30.1793717761156;
        Tue, 03 Nov 2026 06:56:01 -0800 (PST)
Received: from [192.168.25.64] ([94.155.124.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a82cf248sm94424885e9.2.2026.11.03.06.55.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 06:56:00 -0800 (PST)
Message-ID: <129fa3d9-c60a-4777-a4ce-763b37147d49@oss.qualcomm.com>
Date: Tue, 3 Nov 2026 16:55:58 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] media: v4l2-device: Add struct v4l2_device.flags
To: Dan Scally <dan.scally@ideasonboard.com>,
        Nicolas Dufresne <nicolas@ndufresne.ca>,
        Tomasz Figa <tfiga@chromium.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Dafna Hirschfeld <dafna@fastmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20261103-rkisp1-suspend-and-resume-v1-0-08f863b6fdc5@ideasonboard.com>
 <20261103-rkisp1-suspend-and-resume-v1-2-08f863b6fdc5@ideasonboard.com>
 <25952c4c-36db-4361-9ab6-0ca1b1f960bf@oss.qualcomm.com>
 <3478043661b8d89ba5089f56383926785570b7b3.camel@ndufresne.ca>
 <d78d7ee3-0c48-484a-a5b0-9ba44ebf9171@ideasonboard.com>
Content-Language: en-US
From: "Gjorgji Rosikopulos (Consultant)"
 <gjorgji.rosikopulos@oss.qualcomm.com>
In-Reply-To: <d78d7ee3-0c48-484a-a5b0-9ba44ebf9171@ideasonboard.com>
X-Authority-Analysis: v=2.4 cv=O+KsLx9W c=1 sm=1 tr=0 ts=6ae9f602 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=eGCDHFSXubCXFTSSGhjuOA==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=JfrnYn6hAAAA:8 a=P1BnusSwAAAA:8 a=flDrH1Uj0cnjou7IHcYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-ORIG-GUID: 6VFSY3bDICNGGfTyNmjTyxYwgyTouUT8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA1OSBTYWx0ZWRfX8ARfLOV84Mdz
 CkmIrgztTYO4aKlHITOt1Yv40jm+Via5Y8s2/i6ecn72oDgGYi86meWEwY2GaSeWI+2XETLZ7jO
 y6O/8SYWVZhcwHsxWG8wvw2qGhD6diTCHkZFM0payi4cBAoFBl4RF2YgwzJTecfAXum2kZ3Sn0X
 sd2iT1XWMff2jnOIdQn/ooX93SyvRyXv8a63o5hBxRSqt7ZN13AgLEK8SrkyBMtg0O2WVK3l3X4
 C2agK7XG19ZoSL+wqfy+l2g3q/Uex4VKi1WUkYIog1R5Wo7Huh3M1B8j5exrxu+wsyag1w5ZJZ7
 oXkWWmPz8vnFvY+ky249vWf9tuN7NUfyJbQqIBMd5w4nArCBH5LS/Kl9RqWZJVi3R++g/yHy4w+
 qmikavkXMCtnZUPvH81k/iR/phxNWeZ67uEpgGREksifJ5omwTdAdI3/6D2ycKJXw3fy6ba5xNQ
 wtOh/s8T0YsKV4Dg11A==
X-Proofpoint-GUID: 6VFSY3bDICNGGfTyNmjTyxYwgyTouUT8
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA1OSBTYWx0ZWRfX0LpstbCUYPAo
 G1BOj8tW9FF5tT+otD7TmlchSfHQaa8SnD1taJIBwB/o/RMnwwC3Io5JigABl9640zVH4OrVkQD
 TE1WqwhKnrZjhxI3pg3zXb5SSEKWRpQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_03,2026-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_065604_175121_59DCBC06 
X-CRM114-Status: GOOD (  21.62  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMS8zLzIwMjYgNDo0MiBQTSwgRGFuIFNjYWxseSB3cm90ZToKPiBIaSBib3RoCj4gCj4g
T24gMDMvMTEvMjAyNiAxMzo1MSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4gTGUgbWFyZGkg
MDMgbm92ZW1icmUgMjAyNiDDoCAxMDowOSArMDIwMCwgR2pvcmdqaSBSb3Npa29wdWxvcyAoQ29u
c3VsdGFudCkgYQo+PiDDqWNyaXTCoDoKPj4+IEhpIERhbmllbCwKPj4+Cj4+PiBPbiAxMS8zLzIw
MjYgOTo0MCBBTSwgRGFuaWVsIFNjYWxseSB3cm90ZToKPj4+PiBBZGQgYSBmbGFncyBmaWVsZCB0
byBzdHJ1Y3QgdjRsMl9kZXZpY2UsIGFsb25nIHdpdGggYSBzaW5nbGUgZmxhZwo+Pj4+IHZhbHVl
IHRoYXQgaXMgZGVzaWduZWQgdG8gdGVsbCB2NGwyLWFzeW5jIGluIHdoaWNoIGRpcmVjdGlvbiBk
YXRhCj4+Pj4gZmxvd3MgZm9yIHRoaXMgdjRsMiBkZXZpY2Ugc28gdGhhdCBpdCBrbm93cyBob3cg
dG8gc2V0IHVwIGRldmljZQo+Pj4+IGxpbmtzIGJldHdlZW4gc3ViZGV2aWNlcyBjb25uZWN0ZWQg
dXNpbmcgdGhlIGFzeW5jIEFQSXMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgU2Nh
bGx5IDxkYW4uc2NhbGx5QGlkZWFzb25ib2FyZC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICBpbmNsdWRl
L21lZGlhL3Y0bDItZGV2aWNlLmggfCA3ICsrKysrKysKPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL3Y0bDIt
ZGV2aWNlLmggYi9pbmNsdWRlL21lZGlhL3Y0bDItZGV2aWNlLmgKPj4+PiBpbmRleCAyNWY2OWIx
YjhkYjAzZDA3N2Y3NTcwNDcxZDVjNjkxMGZjYWZlMTEwLi45YjE3OTE2ZDYzNjQxYmE2MzdjZjhj
MzdhYTkyNTc0OWJkNGUyMTM0IDEwMDY0NAo+Pj4+IC0tLSBhL2luY2x1ZGUvbWVkaWEvdjRsMi1k
ZXZpY2UuaAo+Pj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvdjRsMi1kZXZpY2UuaAo+Pj4+IEBAIC0x
NSw2ICsxNSw5IEBACj4+Pj4gICAKPj4+PiAgIHN0cnVjdCB2NGwyX2N0cmxfaGFuZGxlcjsKPj4+
PiAgIAo+Pj4+ICsvKiBTZXQgdGhpcyBmbGFnIGlmIHRoaXMgVjRMMiBkZXZpY2UgaXMgYW4gIm91
dHB1dCIgcmF0aGVyIHRoYW4gYW4gImlucHV0Ii4gKi8KPj4+PiArI2RlZmluZSBWNEwyX0RFVklD
RV9GTF9JU19PVVRQVVQJCQlCSVQoMCkKPj4+Cj4+PiBKdXN0IGZvciB0aGUgY2xhcmlmaWNhdGlv
biBkbyB3ZSBjaGFuZ2UgdGhlIG1lYW5pbmcgb2Ygb3V0cHV0LT5jYXB0dXJlIHRvIGlucHV0LT5v
dXRwdXQ/Cj4+PiBJIGtub3cgdGhhdCBvdXRwdXQgaXMgY29uZnVzaW5nIGZvciBldmVyeW9uZSBp
bmNsdWRpbmcgbWUgYnV0IHNvbWVob3cgaSBnZXQgdXNlZCB0byBpdC4KPj4+IEhvd2V2ZXIgdG8g
Y2xhcmlmeSB3aGF0IHRoaXMgbWVhbnMgd2lsbCBiZSBoZWxwZnVsIDotKQo+Pgo+PiBJIGFncmVl
IHRoaXMgaXMgY29uZnVzaW5nLiBUbyBhdm9pZCBhbGwgdGhlIGxlZ2FjeSwgd2UgY291bGQgdXNl
IFBST0RVQ0VSIC8KPj4gQ09OU1VNRVIsIG9yIGRvZXMgYW55b25lIGhhcyBhIGJldHRlciBpZGVh
Pwo+IAo+IEkgaGF2ZSBubyBiZXR0ZXIgaWRlYXMgLSBuYW1pbmcgdGhpbmdzIHdhcyBuZXZlciBt
eSBzdHJvbmcgc3VpdCAtIHNvIGhhcHB5IHRvIHVzZSBQUk9EVUNFUiAvIENPTlNVTUVSLgoKUFJP
RFVDRVIgLyBDT05TVU1FUiBsb29rcyBnb29kIHRvIG1lIGFzIHdlbGwuCgp+R2pvcmdqaQoKPiAK
PiBUaGFua3MKPiBEYW4KPiAKPj4KPj4gTmljb2xhcwo+Pgo+Pj4KPj4+IH5Ham9yZ2ppCj4+Pgo+
Pj4+ICsKPj4+PiAgIC8qKgo+Pj4+ICAgICogc3RydWN0IHY0bDJfZGV2aWNlIC0gbWFpbiBzdHJ1
Y3QgdG8gZm9yIFY0TDIgZGV2aWNlIGRyaXZlcnMKPj4+PiAgICAqCj4+Pj4gQEAgLTMwLDYgKzMz
LDkgQEAgc3RydWN0IHY0bDJfY3RybF9oYW5kbGVyOwo+Pj4+ICAgICogQHJlZjogS2VlcCB0cmFj
ayBvZiB0aGUgcmVmZXJlbmNlcyB0byB0aGlzIHN0cnVjdC4KPj4+PiAgICAqIEByZWxlYXNlOiBS
ZWxlYXNlIGZ1bmN0aW9uIHRoYXQgaXMgY2FsbGVkIHdoZW4gdGhlIHJlZiBjb3VudAo+Pj4+ICAg
ICoJZ29lcyB0byAwLgo+Pj4+ICsgKiBAZmxhZ3M6IGRldmljZSBmbGFncy4gQ2FuIGJlOgo+Pj4+
ICsgKiAgICVWNEwyX0RFVklDRV9GTF9JU19PVVRQVVQgLSBTZXQgdGhpcyBmbGFnIGlmIHRoaXMg
VjRMMiBkZXZpY2UgaXMgYW4KPj4+PiArICogICAib3V0cHV0IiByYXRoZXIgdGhhbiBhbiAiaW5w
dXQiCj4+Pj4gICAgKgo+Pj4+ICAgICogRWFjaCBpbnN0YW5jZSBvZiBhIFY0TDIgZGV2aWNlIHNo
b3VsZCBjcmVhdGUgdGhlIHY0bDJfZGV2aWNlIHN0cnVjdCwKPj4+PiAgICAqIGVpdGhlciBzdGFu
ZC1hbG9uZSBvciBlbWJlZGRlZCBpbiBhIGxhcmdlciBzdHJ1Y3QuCj4+Pj4gQEAgLTU0LDYgKzYw
LDcgQEAgc3RydWN0IHY0bDJfZGV2aWNlIHsKPj4+PiAgIAlzdHJ1Y3QgdjRsMl9wcmlvX3N0YXRl
IHByaW87Cj4+Pj4gICAJc3RydWN0IGtyZWYgcmVmOwo+Pj4+ICAgCXZvaWQgKCpyZWxlYXNlKShz
dHJ1Y3QgdjRsMl9kZXZpY2UgKnY0bDJfZGV2KTsKPj4+PiArCXUzMiBmbGFnczsKPj4+PiAgIH07
Cj4+Pj4gICAKPj4+PiAgIC8qKgo+Pj4+Cj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKPj4+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
