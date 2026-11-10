Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE5606B1B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 13:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D7Xgt2ue;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XYkrWJgp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=PWsFJgyz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=bUP7egQtMsaCETNOJWzJnR1SO2Pkm5R9iTfk+SRHlyQ=; b=D7Xgt2ue3o6nNXQWER4eZdGc3n
	8im4XFZpoZbgqJjhYh4l+iXn/y1PK+nfrYAc0gQII0maYWdjD3xbZ4I39/eO1Cm2vQSJOOiuV66vL
	U2atpUZ3S+Q5TSpdM7NR9TO9BvvpiQNts4mSzUjZpdxv0kFN+5IjXrDsK4CZapWm5hEmtp0LhO/T0
	dz+MVJA+AfIeu+Tm1f9spKp39l5Kj9ywMUAtW1NTaX8hcnsqdbYR7wz/UG00HJHbtRc/bRi7lyIUC
	6pgp7IxpNnhOHeVanBEou4Hs6wT9Z3XyGDoKTgSAjPMTFDIRx2tBaew016as6oM31s2N0fVzTwaDt
	i4PJxGxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQlmt-000000041k2-3kg6;
	Tue, 10 Nov 2026 13:21:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQlmq-000000041in-3WA9
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 13:21:22 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AABAGud3839680
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 13:21:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=wedbrXh177mbzmYM+3txzr
	4ofpzd2UDd+z7ICvagmsM=; b=XYkrWJgpRa06p1t340wdOzXmWXTRgyqCfNJFBl
	eWdpDzKL/23EU2D72H96WXxiMPbR2PHzscSUYks5STxiYudNtOMp1evTvt1/N2Sc
	QfCHV6+CbxCVV8/6JzHiHm95OHA/Yx5tUFNwxjTdJErtrLMqICsUPXQXonzPh8X2
	LaJPqNoT7kYM6eRXzREoL1nTa2At/FW6ar5UrUMvHa+q6lXJNr42URX47wMMUhUR
	qs4n04Vrw5VKURJIQCUqjokEjpjdcTE+MZfBvLpLXBbiPl1er6z/ixbREzrYi3m0
	Q1tuCmFQX7rZRfi9YXD/EoknlrYXpAXsK5jyaReIy/v3DJiQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4humjg3j8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 13:21:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-943e8ff02d0so208725585a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 05:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794316879; x=1794921679; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=wedbrXh177mbzmYM+3txzr4ofpzd2UDd+z7ICvagmsM=;
        b=PWsFJgyzz+q3yOSuA5V1g/PdK0xOEmEEAWeHcLchqlNZ3kFFpCFtbCzBn2isJDuMo8
         g3hJ/E2arQkEFjsGghVSaC0s+utGQewkt04cNa2C/FVSrYqxF5el6mBGC58wdHGKBDTk
         bM4iLNPDNnPKCSfjG7FxTFOzvIhQUVQm5cUnFPOxReIn6EedYiDKiLSE83QmEsdc2w3w
         tUQ5nGQXcm8VmVjqgz6V7LcTaADzIhZC9E/mq6MBExjbRlRXca8Da2ZdM759xRt4zK/g
         BCJLU0Dm+9XTAtAwlnAgTZwLhFkdLhOk23BsIFONgsbjWiTjOTX45m8tPEfICVsJ5/0T
         71CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794316879; x=1794921679;
        h=content-transfer-encoding:content-type:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wedbrXh177mbzmYM+3txzr4ofpzd2UDd+z7ICvagmsM=;
        b=Yon6kEpp2pdLE0HSLZpwHksg+PMfNgisK3cNT8gGkpZAs0i5JAQSFz0TnkJF5x6klF
         zFfsmT+pJbMvJ/rqZcTT9nnxoUoGOx2yW+z7320+cD/0rp13/OzPoZ6dJFkmNGfxTLX/
         ltH7wjR9ulcQbhryX0B9Ly0Q3MNJUC4tiMRmqonWd439JQm4TGScutIb1JPTSiS5lC0+
         Sl4amN7HfVU6PCjmzNpQZBGEYxZ5RuCX0St+kAAqgo0ECev+DjPWLnecjMaKscIpHklS
         QX26s5Uq7CR2/gWx2Sksvz/iE5eUYyT5KvwiRjTp+CkDWGWnLkdxbA80+A6t4E/93ze3
         Sfug==
X-Forwarded-Encrypted: i=1; AL+hErH4jgkCz7CSwLQsCzeou8dVQLox2deptV8k6UbnIYb5QtV8khO311k4Mvit4KMRWaLDKsrba28c6qCzv5tJVA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+jmHF18APCHuxt6F/2UGzBfbeYPObN15rrTn7LcO7QHXF8bihu
	czZSsx7MBno1u0If1IzzqKFBYpUAAVcf2xrNE/KGrrcoI2VzpovgqzdloO0wClRYf1DrwX1kyF8
	h6D01eAKFTzXLjEhj7XGv1yPjTzM4PNZBNq4sEBYv86eusPIM4EVhMpUCZvT4/BzDc+Dqw6Ah9m
	U=
X-Gm-Gg: AYBFou2gXBtuqh+I66HHgNgTTwlqCVy9pitn7p77nJhSKPyF9HEr8aCRubaBiYokj3e
	V0LTNUV5z0I1+6AfI9NUnaPYYsD897+UNBrETF4XjzYWEOOjyclQaf7LsC7pwwMTvzDKsTufoT1
	KO4HRi5DcOYSc9xqhAkwF55SYsONBkus2ovmvtDjQvlEobawPHMsUkFxO2fD5i1nbX1T+GQmgu5
	VzJQX4BUs1eTJDkwQM97Jn/96Rl4AQINeNaDTzTHVDqxBPtGMopzkum1tSud0GGrv12OLyG+LoV
	TdQbgI5N5zY5MIfJzWLCi3GThNuDHCk6NH1Ol+G3HsuSOlSeVQsnNDOAvZXzI1GONct/r7MgarS
	8dcCLupmdJezBOIStF1QuCUFJYIhXwbtFGgFGBzilBsfa0NFOK+ozoja4ZMceXB4WvIQ8uRC3l0
	uv5CU4hyvpiBISpowVotizvrzPytWl3YTXFXw=
X-Received: by 2002:a05:620a:4413:b0:93f:a63:15f8 with SMTP id af79cd13be357-9479f1d71c1mr399921585a.8.1794316878762;
        Tue, 10 Nov 2026 05:21:18 -0800 (PST)
X-Received: by 2002:a05:620a:4413:b0:93f:a63:15f8 with SMTP id af79cd13be357-9479f1d71c1mr399913585a.8.1794316878017;
        Tue, 10 Nov 2026 05:21:18 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:496c:dcb4:4deb:25e8? ([2a05:6e02:1041:c10:496c:dcb4:4deb:25e8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4983585c4fdsm5047635f8f.10.2026.11.10.05.21.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 05:21:17 -0800 (PST)
Message-ID: <b9ff4d03-61f7-4e17-b048-3cecee70f3ca@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 14:21:16 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Heiko St??bner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Lukasz Luba <Lukasz.Luba@arm.com>,
        Linux PM mailing list <linux-pm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kselftest@vger.kernel.org
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Subject: [GIT PULL] powercap: Add generic hierarchy support and convert DTPM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDA1MyBTYWx0ZWRfXzbrPZbJ7paUj
 5GLrj2Z7OX1J1F3PtCswEoFBKLBCCzWj1V14B1ysjwUiYH2N6XiPtA5KVOQBfLf/lQ29Y9ex4I6
 Li7tuOKxJSDtC0JWpfI0LaEz58pvIch4kDQAlRWP8FNRdJ1c+q0L5CXjPSfrE9A50SGZCVMxJfk
 5PQOcoGFWTPZemKRQgmm7DYJXsF0pYjna0/UeUJFf8nI2NEaVWopzJ9MutJD3F1KztQVgQ1kqlD
 bjBleyKp9M3cc5JajTpumCB5qaM78Zaf+5mmd4oNdlcQc0jwo/L0rzPxfqDLRGBr/x7lFMYMgml
 yClEJCXYAV1wIi9FAMNou+6dGIrjbjl2yPcJ+/Vs6IbkXl67WjrVlefYywKnsp870Rq2uaOkWM0
 zsCmM4RO4WIrJiyG+XxhdyWeC2w/DmP9eBHtuo6zykyzPChcVPoCQ90uWtLDrFF3xxjg6BhsXKQ
 gQfxxFULjNy0LxsQosw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDA1MyBTYWx0ZWRfX3dsx606kCba/
 Sks1ORi5uQBTYbKRTmKi5V9j8Qc7DxBYH6A76d2MS/i3ZAIOFstX+P5ONIhc0FkVFwzJVCPdLLy
 F0/4nMZ9C6r+KIxNbfYC+UAU11SipHo=
X-Proofpoint-GUID: RCI-7lCvWkgsGG93xTTIxl5prB4tIbit
X-Authority-Analysis: v=2.4 cv=B6gsQ+tM c=1 sm=1 tr=0 ts=6af31a4f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=GgbJc354ad6G5sA-JgAA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: RCI-7lCvWkgsGG93xTTIxl5prB4tIbit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_04,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611100053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_052120_993645_2845D257 
X-CRM114-Status: GOOD (  16.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Hi Rafael,

as requested please consider the following changes since commit 
6628e7d4c6b25c8d18f1345e3a20d21829aae7e4:

   Linux 7.4-rc1 (2026-11-01 13:26:31 -0800)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git 
tags/powercap-hierarchy

for you to fetch changes up to 6ba41a1519ff1f91f96d90a6bf4f70131a8f7c73:

   powercap: dtpm: Add RK3588 hierarchy (2026-11-09 17:33:40 +0100)

----------------------------------------------------------------
Powercap controllers may expose trees of power zones, such as packages,
clusters and CPUs. This series adds generic helpers to duplicate a static
hierarchy description, create its zones through backend callbacks, and
destroy them in reverse order. Parents must precede their children in the
node array; the helpers validate that ordering rather than sorting nodes.

Drivers supporting multiple platforms can place each platform's hierarchy
description and node array in initdata. powercap_hierarchy_dup() creates a
working copy of the selected hierarchy and rebases its parent pointers.
All original descriptions, including those for unused platforms, can then
be reclaimed automatically with init memory. Names and backend-private
data are not duplicated and must remain valid for the working hierarchy.

The controller supplies creation and destruction callbacks to connect the
generic hierarchy traversal to its backend. The creation callback receives
the control type, node name, private data and parent zone, registers the
zone with its operations and constraints, and returns it to the helper.
The destruction callback unregisters it during rollback or teardown.

The API supports both fatal creation errors, which roll back previously
created zones, and optional nodes: a NULL callback result skips a node and
its descendants while allowing independent branches to be created.

The helpers were motivated by the SPEL work and also let DTPM share the
same hierarchy infrastructure:
https://lore.kernel.org/lkml/20260702-qcom_spel_driver_upstream-v3-0-434d50f0c5b0@oss.qualcomm.com/

A kselftest exercises static and duplicated hierarchies, skipped branches,
reuse after partial destruction, and rejection of repeated creation. Its
userspace script checks the 16 exported zones and selected attribute
values, then removes the module with a sysfs attribute descriptor open.

DTPM is converted to the generic helpers while preserving best-effort
creation when individual backends are unavailable. The CPU backend finds
an online sibling when a hierarchy's representative CPU is offline.
Entirely offline policies remain unavailable during initialization.

The RK3399 description is reduced to one CPU entry per cpufreq policy.
The old backend already suppressed duplicate registration; the extra
entries were redundant descriptions, not additional registered zones.
Finally, a shared Rockchip virtual descriptor and an RK3588 CPU hierarchy
are added. RK3588's three frequency domains are represented by cpu@0,
cpu@400 and cpu@600 below a virtual package node; no GPU zone is added
for RK3588 in this series.

----------------------------------------------------------------
Daniel Lezcano (6):
       powercap: Add generic zone hierarchy creation helpers
       selftests/powercap: Add powercap hierarchy creation API tests
       powercap: dtpm: Remove duplicate RK3399 CPU hierarchy nodes
       powercap: dtpm: Use generic powercap hierarchy helpers
       powercap: dtpm: Rename Rockchip virtual node descriptor
       powercap: dtpm: Add RK3588 hierarchy

  drivers/powercap/dtpm.c                            | 180 ++++++------
  drivers/powercap/dtpm_cpu.c                        |  62 +++-
  drivers/powercap/dtpm_devfreq.c                    |  22 +-
  drivers/powercap/powercap_sys.c                    | 204 +++++++++++++
  drivers/soc/rockchip/dtpm.c                        | 129 +++++++--
  include/linux/dtpm.h                               |   6 +-
  include/linux/powercap.h                           | 205 ++++++++++++++
  tools/testing/selftests/Makefile                   |   1 +
  tools/testing/selftests/powercap/Kbuild            |   5 +
  tools/testing/selftests/powercap/Makefile          |  46 +++
  tools/testing/selftests/powercap/config            |   3 +
  .../selftests/powercap/powercap_hierarchy.c        | 314 
+++++++++++++++++++++
  .../selftests/powercap/powercap_hierarchy.sh       | 128 +++++++++
  13 files changed, 1153 insertions(+), 152 deletions(-)
  create mode 100644 tools/testing/selftests/powercap/Kbuild
  create mode 100644 tools/testing/selftests/powercap/Makefile
  create mode 100644 tools/testing/selftests/powercap/config
  create mode 100644 tools/testing/selftests/powercap/powercap_hierarchy.c
  create mode 100755 tools/testing/selftests/powercap/powercap_hierarchy.sh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
