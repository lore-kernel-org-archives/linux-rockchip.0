Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F70DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 16:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mkAdrGg88QnWA3I+NSn9DJpfO/V/EmAEAEsfDlnRMUs=; b=wvpu9Mh04LTEAJI2WccP16rN5n
	EHDMxcBZhADZFF8YQskjM00NcUOKl/aMKUfF5y1bRylW/aArV54M8tFVtVusZw5wV39za296/fk82
	RVi6KDsm7pblxEWtTrgZ5T2Gt/JeP36htNtKCkWjRzDcfPrnnXqhJ10AsFCFnNTty9SO4yd+o9yag
	UF7Hmu+LxlHzDPIXDYKNlBvf3qnEuuOG6i5/JKSHGm3RGThj5ib8IQGjA57o2AeEWNkehpVE8DQY3
	mktS3oLBaOJGhmg34LWQ+Qld6hhorDwEtBA2BDCqw+12Klw3UPGrNT94jxK1ASzljYADY79FZUnq5
	civCP6/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxWHF-00AmZp-08; Tue, 22 Nov 2022 16:37:41 +0000
Received: from mail-dbaeur03on2089.outbound.protection.outlook.com ([40.107.104.89] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxWGo-00AmLR-AI; Tue, 22 Nov 2022 16:37:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QcIiEx8a2JwFAnPPFgth4nD/IXZF0/CHUQ4gPJFJFz6b2wURRxGGcIi7nXjyOfaZG5akE6156y/ztp37uBRZb5KGeVZcseRzyqKmKomqXe3wnAFLCXddNjwGtP2y/0jrsWXS05MJs3ARrroolRvUAhYXmbPrK1HHkWBmEaT81SphI8Xns4Czr28Ipxvkfy4FLzfG2bl240LwwQ/gwVR8VmMNfu0gKB8YxTnCQC5juvF/ME5Vp3UeXv0RfcgB359KPQyXXZKybnUd2KqsHJrjrKdbrMR8Iq2Ecrktux57OF68rNNqU0sQ35g4IUfSGvjc5XgqTy/J4kMmJYr/3LinZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xn9kW3EbpxTGnSIL2SkV7ne2N9yYGaY2IazEngKVsc=;
 b=og5fd2MGswq7wcefPBuW2wrNW9CVCYrD8yaTqT+reYzPZwEAByOxw6+0rmpOY1jan+Bh7aAJOslIGF7wcwyngh7r60DqSSNTKvVvwb7UUpDulwefTTaNafczn60bGiExINusDg3NTVAGo48vBGt78GihmcGTDkNi4ugdxrqks27DUA5yAPovNgRM7ZkyJJEcT4G/MRC1mA0XDILgE66tjbde7AzZP3entB1xPuElxmAbAOgFkmGiffOfu8ioC5DdZx2Cxv8Z9kOZI0vYV5oafM8M+MUrW8xl7pP0LIIQKBUoZD8o77RtIF/ljFlsXQIVs1LxNMYOI/GEuH+VYTkqBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9xn9kW3EbpxTGnSIL2SkV7ne2N9yYGaY2IazEngKVsc=;
 b=JrcJUWh5wqHTWzK7qlBIBFS5uK0OSWpj2pm9tayB8DfZDQjDvPQ/F+ZkRSFK7gxqRXUW5kyYjWYa0rZZBZfUnetR8jXSFVoXAb8FKBuQlj5b22f7CuwRqyv7ePriuhEbTtVUE6pshC39OSpJ4s53F8r9DTIg6fFdxkgnbuxRfco3Ds4P3SaevqmVtSD+Q0MPK7sTBRA2H16rkk9MmQo38my8XmWTfYic8puv3QvVHMDwN+TuR5qE+3Rs6iKj5ngYByWY5c2lW7+Nxlm/FHnJj0cVruMqS/Go15h0F9G0Ie9ENMNvsB2KIrNj/60z/PKD1lSf6l6IjUqUyru9lml6+Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB7182.eurprd04.prod.outlook.com (2603:10a6:800:121::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Tue, 22 Nov
 2022 16:22:50 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 16:22:49 +0000
Message-ID: <84af9a9e-5d82-7420-e72c-4d984135f2d6@theobroma-systems.com>
Date: Tue, 22 Nov 2022 17:22:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH RFC v2 5/7] arm64: dts: imx: fix touchscreen reset GPIO
 polarity
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, David Jander <david@protonic.nl>,
 Fabio Estevam <festevam@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, Shawn Guo <shawnguo@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Samuel Holland <samuel@sholland.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Bastien Nocera
 <hadess@hadess.net>, Chen-Yu Tsai <wens@csie.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans de Goede <hdegoede@redhat.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org
References: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v2-5-2c38fb03a300@theobroma-systems.com>
 <CAOMZO5BzWsHAy7KjZe+KEiXVq-Mfpggqjk0vswuzx7nkups3gA@mail.gmail.com>
 <20221122081851.6cb762d8@erd992>
 <907b9321-14dc-dc99-80fc-e1a20ee33a1e@theobroma-systems.com>
 <916a6953-d9b4-c257-c08b-f5277ead71af@arm.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <916a6953-d9b4-c257-c08b-f5277ead71af@arm.com>
X-ClientProxiedBy: FR2P281CA0103.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB7182:EE_
X-MS-Office365-Filtering-Correlation-Id: 2eb923b4-2cb6-4f45-03aa-08dacca5cb31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	qZxJyOp0v4NF/p8r7kDBOSOUdEBkce5p+kGSiO+hwWfuT0hte8g4nEUTu8ntmi/qi7M0Erir+BPEqUhANiRAAnfGx5bK3ClF8aZlGHDTP00/lndecOCO/reWncaYHsIh4hFAJVU7SgrgVnHBrfTG9MgrIX1THp1BIvezNGgETgqgUv8n6UHQd+tI/66Ncxz3zVjFjliKSCIob6e1MCvBO2Np0p9s4zKrDG1Jx9jlj5VH9JCVZWyhZWe2vE962jaNKYtXPrgJ/FwNUCNvez1FR3F/jmjKjyeQVWHNZkWyFCwdT8k+n1TWhKlyoDuSggnJLJlnGGGLgwpIt4nLsTMl+dX2fApqt36rD2L/l2hlh5LGbiXgm+FzT4rSqdU68Z9uocP2C8ySxwuWmzNicOwfTsIaYIhesIO/OfktF5WURfINHv4S1F8DwE1gmi4f3Tmp6SosB6xDBfINS7V9ITqKdzIqJSKal0R9A8qNNEZoI00wrzM6VTMxF2U6tJ+FHrwccOxXhJfgTgABpJNiEmdUEBgmE8GG7skEuo+HLBJWLU3AzIQRiZMJhcucXMniILfE5h0qUQWV2CbsOgqptkSdBPACwfuWyUFGKTnngpCsijGvdPAFD3CQcI2cRpiSjLYU20KylRnxRiKfJZpTckcNYB/Wrq2H/hCWhmo4y6zv8RISpAc/shr+YpmtjFTo2K1qszlVEUnb33uWZ/pIFMdi742gcyxCrqtXIK2RE2VFCiJZ9eY7dXfpBMSE1WaEjiEI
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(346002)(136003)(376002)(366004)(39840400004)(451199015)(31686004)(6486002)(86362001)(54906003)(53546011)(110136005)(26005)(6506007)(6666004)(478600001)(36756003)(31696002)(6512007)(38100700002)(2616005)(186003)(83380400001)(2906002)(966005)(41300700001)(316002)(8936002)(5660300002)(4001150100001)(7416002)(44832011)(66556008)(66476007)(4326008)(8676002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?TkQzOHpwdTdKSU5qUG1PdmtRS2hDNjhBS1RLbGZkZnhZYnVsVVd6M3pmUUFQ?=
 =?utf-8?B?a3FaL0xqbFJ3VHFOdTQwdThPNlJmK2l6VW5yaVNzSTRXWXE0Z1NweHo2clov?=
 =?utf-8?B?d3ZHQUw3N0owSDNpSi9aMTMzV2RXUWV6Qzdqcmp5cnRoeHZHS0JDZnlJZFFQ?=
 =?utf-8?B?cU42WnVud0FhcVZWZDVtcmVKRm5mckR3TUpVRlRGV2hJYlVqaDhyVEtsNEFS?=
 =?utf-8?B?Q2YxeXpMbVprN0NLMkZ6RnNVQk1CUFFCVjIzZ3pDMWU3TjV1SWh2MHlwWEFr?=
 =?utf-8?B?MzhmTnc3UmRpdi9UOTFYbDBRd0UxeE44eTUxZEw3d1BYay9nUnM3VEVVVWNE?=
 =?utf-8?B?YnU5V2xybTNhQmpaV1VJckRpSmZ3bW1OWGZ1ZWFGbWlrMDFOVnhpZ3I4aGli?=
 =?utf-8?B?U1lLSkV1RERneXYvVDQ4eTd5MFJsazk0aDRPZkY4RnkzTW1vdE5QNkNkNDVu?=
 =?utf-8?B?aG5hVTlWdW1GcW5vZVFLakRYYUZGdG40aTlEV0I4UnFiVzdhMjdVQTFDR1o1?=
 =?utf-8?B?TWsrTlhFdkZnS3EyeW12SE4xYksyZEp2OTlSckljVGxEbDA4YUhPNmpQSit1?=
 =?utf-8?B?UVN6V21PRUp5Z0dHNXAzS0RoNWpwVWZXWlNQeVZNbjJiZGVCNlpUK2ZhRnpU?=
 =?utf-8?B?eWpzcTdzUnJtQmlQR0QyRmNvaU05VG9SRFkxRHc3cnFtR2FxM0xwTktqdjhP?=
 =?utf-8?B?dXJoWUNkWnhibFB4bHRpMnNSQTRJYjQ2UUhxU2MrNmJmamlHR0pTZm5lSFJw?=
 =?utf-8?B?VU5Rclh6d2VNNGUrUGs0UVQyRlJ6bjlMUUlFVXBoVTJhTWpkMFdHa0c3Qmtv?=
 =?utf-8?B?MGRscXlpSDlxUG5sSG9JeStIckhTWGwwT2tCdHVNZ2JEaHR0RzMxbGgrSFhD?=
 =?utf-8?B?aDI0VXA0WGlBV2g4cjYzVmR4cEtIQytpcUNVTkxoVHpkdVM0TkNlT3NtWm0r?=
 =?utf-8?B?d2RoRGJDN3ZTYlErUDZQTXB0RCtjKzlWTU5KNGxaNlZkRjdueTh0R1c5UGU5?=
 =?utf-8?B?Sk1ScE0zT2ViWHo4NGRoV1RqSDdGbFc3OG9RT3QvbWp1cVJZSUhFcittdUtB?=
 =?utf-8?B?SWJaVWdzQXUzUmNsdUszSXVmbTE3K0d0Ty9ocUM4N1JIckdUSlkwL0lzcVVq?=
 =?utf-8?B?U2hxbVhmcEp1Uk1zZjZLN093MVlGMEhOa1UvZjR0R3dpUDg0QjQ2VWRVOEJz?=
 =?utf-8?B?K2RqN0pFbFA4Z1V1NlhmZnl1eE1MMDkrc2tUeWRObndsK3BRSVRDT0tqL0FO?=
 =?utf-8?B?UndaODhSMG1tUmZDWGlUcGNXaUtsQVI4NnZhbThmYk5VYVdzT2ZiUjlNMDRs?=
 =?utf-8?B?dVRSakJIMDROTUkzaHFqbG1mRjRHYWFZdm9YN1ZVbk9OQWVPRFAxbnE2aElo?=
 =?utf-8?B?cW5kc1U0ajdtYlR1UmxWTDNETmpvTDdpVTZXVVRLK2NVQjZaSUhlZ1VDdklR?=
 =?utf-8?B?bCtwNWJyYmV6RzVwYTZnNVBORzNORWovdzB6VS9McDBRMlhOWC9ocnZTd1ZU?=
 =?utf-8?B?RUl4WGJKQ2Jlc29TN0xaTHUwM3ZubU9lODBhQVdpb0N6cU5IQnN6REg3Q3Bv?=
 =?utf-8?B?cmVsSm13R2JyaFJ5UTdRRGhNMk9qUUh5M09TK05lT1hZM2hDVkMrcFN5ZnJm?=
 =?utf-8?B?aHpKMXFrSHRBWTVjOTlpV295UEZhdWJXem5NTDNCWGJyWElZVS9oT1BxNThj?=
 =?utf-8?B?U0lGbGlsYkQwUGdBQ0QyQlk4K0lYcTl2VkZuMjc5SER1ejZSWHpqM1VUUTAz?=
 =?utf-8?B?dENoZ2hhVWYrbG04UU0rM2s4d0NPQTdXazJudmc4aWVGeVRITGswaFJBZWcw?=
 =?utf-8?B?dTMrSXFWb2IxTzNwOGdaSVFWM0dWT0dCNUNmL0xFN1NRaTJJa2EzeEdIa1Vp?=
 =?utf-8?B?RXlXdXNwaG50cEQ3NWJ3Q3MvRHJQWk9lSXZyL05mUGdZTVl3b0ZZQi9xb0s1?=
 =?utf-8?B?S2U4WUZwZEhycUMzRXREM3dsdVJDbzBaejhGdGRiUitWTERHb3NDMitpT3cz?=
 =?utf-8?B?VU9uL0I2Zk5RZ2xBaE9KbzE0L2FFV3praFU0ZUZia0dsUXJXSDF5cE00Vmxu?=
 =?utf-8?B?Y3VIaDNhQ0EzNHVNZUN6dFJrOFVMVitpelpyME5QRHZybGxpOWtVM3ZvRWk3?=
 =?utf-8?B?R1N2Q3kxNUdMc3dZYk96ekRKczB3OGZrTHVWY3lZS21ZQmFyQUQxd1dqWXBL?=
 =?utf-8?Q?69ZDs0ZeqQEG3K0/xapM/8M=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb923b4-2cb6-4f45-03aa-08dacca5cb31
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 16:22:49.8095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I24sxmFUzR5uPUe5aNFCLJC3zBRdhBjQWX6Mwdx2wXh1QLbnQbM35w3FeGIkmUeSMSfjp31+KkXrlSJUYPmq95LLpVlsGqKfq/XR4q8LfB6Dxbjn8eCM2qJtfm7wWhq8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_083714_378637_40303F09 
X-CRM114-Status: GOOD (  30.48  )
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

SGkgUm9iaW4sCgpPbiAxMS8yMi8yMiAxMzo0NiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIw
MjItMTEtMjIgMDk6NTgsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+PiBIaSBEYXZpZCwKPj4KPj4g
VGhhbmtzIEZhYmlvIGZvciB0aGUgQ2MuCj4+Cj4+IE9uIDExLzIyLzIyIDA4OjE4LCBEYXZpZCBK
YW5kZXIgd3JvdGU6Cj4+PiBPbiBNb24sIDIxIE5vdiAyMDIyIDE1OjE4OjMyIC0wMzAwCj4+PiBG
YWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+IHdyb3RlOgo+Pj4KPj4+PiBbQWRkaW5n
IEFuZ3VzIGFuZCBEYXZpZF0KPj4+Cj4+PiBUaGFua3MuIFRoaXMgd2FzIGFwcGFyZW50bHkgbmVj
ZXNzYXJ5IDstKQo+Pj4KPj4+PiBPbiBNb24sIE5vdiAyMSwgMjAyMiBhdCAzOjEyIFBNIFF1ZW50
aW4gU2NodWx6IAo+Pj4+IDxmb3NzK2tlcm5lbEAwbGVpbC5uZXQ+IHdyb3RlOgo+Pj4+Pgo+Pj4+
PiBGcm9tOiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMu
Y29tPgo+Pj4+Pgo+Pj4+PiBUaGUgcmVzZXQgbGluZSBpcyBhY3RpdmUgbG93IGZvciB0aGUgR29v
ZGl4IHRvdWNoc2NyZWVuIGNvbnRyb2xsZXIgc28KPj4+Pj4gbGV0J3MgZml4IHRoZSBwb2xhcml0
eSBpbiB0aGUgRGV2aWNlIFRyZWUgbm9kZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogUXVl
bnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4+Pj4g
LS0tCj4+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS1wcnQ4bW0u
ZHRzwqDCoMKgwqDCoMKgwqDCoCB8IDIgKy0KPj4+Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyB8IDIgKy0KPj4+Pj4gwqAgMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0
cyAKPj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0
cwo+Pj4+PiBpbmRleCA5ZmJiYmI1NTZjMGIzLi5kZjdlNWFlOTY5OGUxIDEwMDY0NAo+Pj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0cwo+Pj4+
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0cwo+
Pj4+PiBAQCAtMTA3LDcgKzEwNyw3IEBAIHRvdWNoc2NyZWVlbkA1ZCB7Cj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDw4IElSUV9U
WVBFX05PTkU+Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnEtZ3Bp
b3MgPSA8JmdwaW8xIDggR1BJT19BQ1RJVkVfSElHSD47Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlc2V0LWdwaW9zID0gPCZncGlvMSA5IEdQSU9fQUNUSVZFX0hJR0g+Owo+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1ncGlvcyA9IDwmZ3BpbzEg
OSBHUElPX0FDVElWRV9MT1c+Owo+Pj4KPj4+IE5BQ0shCj4+Pgo+Pj4gVGhlIFBSVDhNTSBoYXMg
YW4gaW52ZXJ0ZXIgaW4gdGhlIHJlc2V0IGxpbmUuIFRoZSByZWFzb24gZm9yIHRoYXQgaXMgCj4+
PiB0aGF0IHRoZQo+Pj4gcmVzZXQgbGluZSBuZWVkcyB0byBiZSBpbmFjdGl2ZSB3aGVuIHRoZSBk
cml2aW5nIHNpZGUgaXMgdW5wb3dlcmVkLgo+Pj4gVGhlIERUIHdhcyBjb3JyZWN0LCB0aGlzIGNo
YW5nZSB3aWxsIGJyZWFrIGl0Lgo+Pj4KPj4KPj4gVGhlIERUIHdhcyBjb3JyZWN0LiBUaGUgaW1w
bGVtZW50YXRpb24gaW4gdGhlIGRyaXZlciBpcyBjaGFuZ2VkICh0aGUgCj4+IHBvbGFyaXR5IGlz
IHN3YXBwZWQpIGluIHRoaXMgcGF0Y2ggc2VyaWVzLCB0aGVyZWZvcmUgdGhlIERUIGlzbid0IAo+
PiBjb3JyZWN0IGFueW1vcmUsIGhlbmNlIHRoaXMgcGF0Y2guCj4gCj4gSSdtIG5vdCBzdXJlIGl0
J3MgcXVpdGUgdGhhdCBzaW1wbGUuLi4gRldJVyBJJ20gdXNpbmcgYW4gYWRkLW9uIExDRCAKPiBt
b2R1bGUgd2l0aCBhIEdUOTI3MVsxXSAoYW5kIEkgd29uJ3QgYmUgdGhlIG9ubHkgb25lIC0gUmFz
cGJlcnJ5IFBpIGFuZCAKPiBvdGhlciBTQkMgdXNlcnMgdXNpbmcgRFQgb3ZlcmxheXMgb3IgY3Vz
dG9tLWJ1aWx0IERUQnMgYXJlIGEgd2hvbGUgb3RoZXIgCj4gY2FuIG9mIHdvcm1zIGhlcmUpLCB3
aGVyZSBHUElPX0FDVElWRV9MT1cgaXMgY29ycmVjdGx5IHNwZWNpZmllZCBwZXIgdGhlIAo+IHNj
aGVtYXRpY3MsIHRodXMgIndyb25nIiBmb3IgdGhlIGN1cnJlbnQgZHJpdmVyIGJlaGF2aW91ciwg
eWV0IGl0ICppcyogCj4gd29ya2luZyBPSyBhcy1pcy4gSSBndWVzcyB0aGF0J3MgYmVjYXVzZSAv
UlNUQiBlbmRzIHVwIGRyaXZlbiBsb3cgZm9yIAo+IGxvbmcgZW5vdWdoIGJldHdlZW4gdGhlIGN1
cnJlbnQgImRlYXNzZXJ0aW9uIiBieSAKPiBncGlvZF9kaXJlY3Rpb25fb3V0cHV0KDEpIGFuZCBn
cGlvZF9kaXJlY3Rpb25faW5wdXQoKSBhbGxvd2luZyB0aGUgCj4gZXh0ZXJuYWwgcHVsbC11cCB0
byB0YWtlIGl0IGhpZ2ggYWdhaW4uCj4gCgpDb3JyZWN0LCB0aGF0IHNlZW1zIGxpa2UgaXQgaXMg
dGhlIGNhc2UgZm9yICJjdXJyZW50LXdyb25nIiBHUElPIGxldmVsLCAKcHJvdmlkZWQgeW91IGhh
dmUgYSBwdWxsLXVwIG9uIHRoZSBSRVNFVCBsaW5lIChhcyByZWNvbW1lbmRlZCBpbiB0aGUgCmRh
dGFzaGVldCkuCgpjLmYuIApodHRwczovL2dpdGh1Yi5jb20vaGFkZXNzL2d0OXh4L2Jsb2IvbWFz
dGVyL3NwZWNpZmljYXRpb25zL0dUOTI3MSUyMERhdGFzaGVldC5wZGYKCndpdGggdGhlIGN1cnJl
bnQgZHJpdmVyLCB3aGF0IEkgYXNzdW1lIHdlIHNob3VsZCBnZXQgaXM6CiAgICAgICAgICAgICBf
X19fX19fX19fX19fX19fX19fCklOVCBfX19fX19ffCAgICAgICAgICAgICAgICAgICB8X19fX19f
X19fX18KCiAgICAgX19fX19fX19fX19fICAgICAgICAgICBfX19fX19fX19fX19fX19fX18KUlNU
ICAgICAgICAgICAgIHxfX19fX19fX198CgogICAgXgogICAgTF9fIHB1bGwtdXAgb24gUlNUIHNv
IGhpZ2ggYnkgZGVmYXVsdAogICAgICAgICBeCiAgICAgICAgIExfX18gZ3Bpb2RfZGlyZWN0aW9u
X291dHB1dCgwKSAoZGVhc3NlcnQgR1BJTyBhY3RpdmUtbG93LCBzbyBoaWdoKQogICAgICAgICAg
ICBeCiAgICAgICAgICAgIExfX19fIGdvb2RpeF9pcnFfZGlyZWN0aW9uX291dHB1dAogICAgICAg
ICAgICAgICAgIF4KICAgICAgICAgICAgICAgICBMX19fIGdwaW9kX2RpcmVjdGlvbl9vdXRwdXQo
MSkgKGFzc2VydCBHUElPIGFjdGl2ZS1sb3csIApzbyBsb3cpCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF4KICAgICAgICAgICAgICAgICAgICAgICAgICAgTF9fX18gZ3Bpb2RfZGlyZWN0aW9u
X2lucHV0KCkgKGZsb2F0aW5nLCAKcHVsbC11cCBvbiBSU1Qgc28gaGlnaCkKClRoaXMgd29ya3Mg
YmVjYXVzZSBvZiB0aGUgcHVsbC11cCBvbiBSU1QgYW5kIHRoYXQgd2hhdCBtYXR0ZXJzIGlzIHRo
YXQgCnRoZSBJTlQgbGFuZSBpcyBjb25maWd1cmVkIDEwMMK1cyBiZWZvcmUgYSByaXNpbmcgZWRn
ZSBvbiBSU1QgbGluZSAoZm9yIAphdCBsZWFzdCA1bXMpLiBIb3dldmVyLCB0aGUgaW5pdCBzZXF1
ZW5jZSBpcyBub3QgcHJvcGVybHkgZm9sbG93ZWQgYW5kIAptaWdodCBnZXQgYnJva2VuIGluIHRo
ZSBmdXR1cmUgc2luY2UgaXQgaXMgbm90IHNvbWV0aGluZyB0aGF0IHdlIApleHBsaWNpdGx5IHN1
cHBvcnQuCgpXaXRoIHRoZSBwcm9wb3NlZCBwYXRjaDoKICAgICAgICAgICAgIF9fX19fX19fX19f
X19fX19fX18KSU5UIF9fX19fX198ICAgICAgICAgICAgICAgICAgIHxfX19fX19fX19fXwoKICAg
ICBfX19fICAgICAgICAgX19fX19fX19fX19fX19fX19fClJTVCAgICAgfF9fX19fX198CgogICAg
XgogICAgTF9fIHB1bGwtdXAgb24gUlNUIHNvIGhpZ2ggYnkgZGVmYXVsdAogICAgICAgICBeCiAg
ICAgICAgIExfX18gZ3Bpb2RfZGlyZWN0aW9uX291dHB1dCgxKSAoYXNzZXJ0IEdQSU8gYWN0aXZl
LWxvdywgc28gbG93KQogICAgICAgICAgICBeCiAgICAgICAgICAgIExfX19fIGdvb2RpeF9pcnFf
ZGlyZWN0aW9uX291dHB1dAogICAgICAgICAgICAgICAgIF4KICAgICAgICAgICAgICAgICBMX19f
IGdwaW9kX2RpcmVjdGlvbl9vdXRwdXQoMSkgKGRlYXNzZXJ0IEdQSU8gCmFjdGl2ZS1sb3csIHNv
IGhpZ2gpCiAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgTF9fX18gZ3Bpb2RfZGlyZWN0aW9uX2lucHV0KCkgKGZsb2F0aW5nLCAKcHVsbC11cCBv
biBSU1Qgc28gaGlnaCkKClRoaXMgc2hvdWxkIHdvcmsgdG9vIGFuZCBkb2VzIG5vdCByZWx5IG9u
IHNvbWUgc2lkZSBlZmZlY3RzL3RpbWluZ3MgYW5kIApzaG91bGQgYmUgZnV0dXJlLXByb29mLgoK
QXMgZm9yIE9PVCBEVEIvRFRCTywgbm90aGluZyBJIGNhbiBkbyB1bmZvcnR1bmF0ZWx5LCB0aGF0
IGlzIGNvcnJlY3QuCgpUaGUgZmFjdCB0aGF0IHdlIGhhdmUgYm90aCAiaW50ZXJwcmV0YXRpb25z
IiBvZiB0aGUgUkVTRVQgR1BJTyBsZXZlbCBpbiAKTGludXggaXMgd29ycnlpbmcsIGFsYmVpdCB3
aXRoIE9PVCBEVEJzLiBBIGRyaXZlciBvciBzdWJzeXN0ZW0gcmV3b3JrIAptaWdodCBicmVhayBi
b2FyZHMgaW4gd2hpY2ggY2FzZSBwZW9wbGUgc2hvdWxkIHVwZGF0ZSB0aGVpciBEVEIgYXMgCnN1
Z2dlc3RlZCBoZXJlIG9yIHdlJ2xsIGRlY2lkZSB0byBzdXBwb3J0IGJvdGggaW50ZXJwcmV0YXRp
b25zLCB3aGljaCAKYWluJ3QgZ3JlYXQgZWl0aGVyLgoKQ2hlZXJzLApRdWVudGluCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
